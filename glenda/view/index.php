<?php

ini_set('display_errors', 1);

define('APPLICATION', true);
include '../../includes/conn/conngrunt_front.php';
if ( $strMode == 'type' )
{
	$sqlType = "SELECT type_name FROM type 
		WHERE type_id = $intId";
	$sthType = $pdo->query($sqlType);
	$typeRow = $sthType->fetch();
	$strName = $typeRow['type_name'];
}
else
{
	$strName = 'Artist';
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin <?= ' - '.$strName?></title>
    <link href="../../includes/css/jk-02.css" rel="stylesheet" type="text/css" />
</head>
<body>
<?php
include '../../includes/php/top.php';
?>
			<main>
<?php
include '../../includes/php/users.php';
?>
		<h1>View <?= $strName?></h1>
<?php if ( $strMissing <> '' ){ ?>				<p class="red"><?= $strMissing ?></p><?php } ?>

<?php
		if ( $strMode == 'type' )  // -----------------------------------------------------------------------------
		{
			$intOffset = ($intPage - 1) * $intLimit;

			$sql = "SELECT (
				SELECT count(product_id) AS countVar
				FROM product 
				INNER JOIN artist_new ON product_artist_no = artist_id
				WHERE product_type_no = $intId) AS countVar,
			product_id,product_name, artist_name, artist_surname, product_ref
			FROM product 
			INNER JOIN artist_new ON product_artist_no = artist_id
			WHERE product_type_no = $intId
			ORDER BY artist_surname ASC
			LIMIT " . $intOffset . "," . $intLimit;
			
			$sthProduct = $pdo->query($sql);
			$productRow = $sthProduct->fetch();

			$intTotal = $productRow['countVar'];
			$intNoOfPages = intval($intTotal / $intLimit)+1;			
?>
<?php
include '../../includes/php/pagejump.php';
?>
		<table>
			<tr>
				<th>Products</th>
				<th colspan="2">&nbsp;</th>
			</tr>
<?php
			$j=0;
			while ( $sqlRow = $sthProduct->fetch() )
			{
				$j=$j+1;
?>
			<tr>
				<td width="10%"><?= $sqlRow['product_ref']?></td>
				<td width="40%"><?= $sqlRow['artist_surname']?> <?= $sqlRow['artist_name']?></td>
				<td width="40%"><?= $sqlRow['product_name']?></td>
				<td width="5%"><a class="btn" href="../edit/?mode=product&amp;id=<?= $sqlRow['product_id'] ?>">Edit</a></td>
				<td width="5%"><a class="btn" href="../delete/?mode=product&amp;id=<?= $sqlRow['product_id'] ?>" onClick="return confirm('Delete <?= $sqlRow['product_name']?>?')">Delete</a></td>
			</tr>
<?php
			}
?>
		</table>

<?php
include '../../includes/php/pagejump.php';
?>
<?php
			if ( $j == 0 )
			{
?>
		<p>No products at the moment</p>
<?php
			}

		}
?>
	</div>	
<?php
include '../../includes/php/footer.php';
?>
</body>
</html>