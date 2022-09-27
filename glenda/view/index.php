<?php

ini_set('display_errors', 1);

define('APPLICATION', true);
include '../../includes/conn/conngrunt_front.php';
if ( $strMode <> 'artist' )
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
		if ( $strMode <> 'artist' )  // -----------------------------------------------------------------------------
		{
			$intOffset = ($intPage - 1) * $intLimit;

			$sql = "SELECT (
				SELECT count(product_id) AS countVar
				FROM product 
				INNER JOIN artist_new ON product_artist_no = artist_id
				WHERE product_type_no = $intId) AS countVar,
			product_id,product_name, artist_id,artist_name, artist_surname, product_ref
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
			$sthProduct = $pdo->query($sql);
			while ( $sqlRow = $sthProduct->fetch() )
			{
				$j=$j+1;
?>
			<tr>
				<td width="10%"><?= $sqlRow['product_ref']?></td>
				<td width="40%"><a href="../edit/?mode=artist&amp;id=<?= $sqlRow['artist_id']?>"><?= $sqlRow['artist_surname']?> <?= $sqlRow['artist_name']?></a></td>
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








		} elseif ( $strMode == 'artist'){
			// echo(' $intOffset, $intLimit: '. $intOffset, $intLimit);





			$intOffset = ($intPage - 1) * $intLimit;

			$sql = "SELECT (
				SELECT count(artist_id) AS countVar
				FROM  artist_new
				INNER JOIN product ON product_artist_no = artist_id) AS countVar,
				artist_id,artist_name,product_name, artist_name, artist_surname, product_ref
			FROM  artist_new
			INNER JOIN product ON product_artist_no = artist_id
			GROUP BY artist_id
			ORDER BY artist_surname ASC
			LIMIT " . $intOffset . "," . $intLimit;
			
			$sthArist = $pdo->query($sql);
			$artistRow = $sthArist->fetch();

			$intTotal = $artistRow['countVar'];
			$intNoOfPages = intval($intTotal / $intLimit)+1;
?>

<?php
include '../../includes/php/pagejump.php';
?>
		<table>
			<tr>
				<th>Artists</th>
				<th colspan="2">&nbsp;</th>
			</tr>
<?php
			$j=0;
			$sthArist = $pdo->query($sql);
			while ( $artistRow = $sthArist->fetch() )
			{
				$j=$j+1;
?>
			<tr>
				<td width="90%"><?= $artistRow['artist_surname']?> <?= $artistRow['artist_name']?></td>
				<td width="10%"><a class="btn" href="../products/?id=<?= $artistRow['artist_id'] ?>">Products</a></td>
				<td width="5%"><a class="btn" href="../edit/?mode=artist&amp;id=<?= $artistRow['artist_id'] ?>">Edit</a></td>
				<td width="5%"><a class="btn" href="../delete/?mode=artist&amp;id=<?= $artistRow['artist_id'] ?>" onClick="return confirm('Delete <?= $artistRow['artist_name']?>?')">Delete</a></td>
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