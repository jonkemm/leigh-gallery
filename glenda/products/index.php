<?php

ini_set('display_errors', 1);

define('APPLICATION', true);
include '../../includes/conn/conngrunt_front.php';
?>

<?php
			$sql = "SELECT artist_id,product_name, artist_name, artist_surname, product_id
			FROM  product
			INNER JOIN artist_new ON product_artist_no = artist_id
			WHERE product_artist_no = " . $intId;
			
			$sthArist = $pdo->query($sql);
			$artistRow = $sthArist->fetch();

			$strName = $artistRow['artist_name'] .' '.$artistRow['artist_surname'];
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
		<h1>View products from <?= $strName?></h1>
<?php if ( $strMissing <> '' ){ ?>				<p class="red"><?= $strMissing ?></p><?php } ?>
		<table>
<?php
			$j=0;
			$sthArist = $pdo->query($sql);
			while ( $artistRow = $sthArist->fetch() )
			{
				$j=$j+1;
?>
			<tr>
				<td width="90%"><?= $artistRow['product_name']?></td>
				<td width="5%"><a class="btn" href="../edit/?mode=product&amp;id=<?= $artistRow['product_id'] ?>">Edit</a></td>
				<td width="5%"><a class="btn" href="../delete/?mode=product&amp;id=<?= $artistRow['product_id'] ?>" onClick="return confirm('Delete <?= $artistRow['product_name']?>?')">Delete</a></td>
			</tr>
<?php
			}
?>
		</table>
<?php
			if ( $j == 0 )
			{
?>
		<p>No products at the moment</p>
<?php
			}
?>
	</div>	
<?php
include '../../includes/php/footer.php';
?>
</body>
</html>