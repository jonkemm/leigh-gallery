<!doctype html>
<html language="en-GB">
<?php
define('APPLICATION', true);
include '../../../includes/conn/conngrunt_front.php';
$sqlProd = "SELECT
product_id, artist_surname, artist_name, artist_id, product_name, product_ref, product_price  
			FROM artist_new 
			INNER JOIN product ON artist_id = product_artist_no 
			WHERE artist_id = $intId";
$strName = str_replace( '_', ' ' , $_REQUEST['artist'] );
$artistlist = '';

$sthProd = $pdo->query($sqlProd);
$productRow = $sthProd->fetch(PDO::FETCH_ASSOC);
?>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?= $strName ?> at Leigh Gallery | Art Gallery in Hastings, East Sussex</title>
    <link href="../../../includes/css/jk-02.css" rel="stylesheet" type="text/css" />
	<meta name="keywords" content="<?=$strName?>, leigh gallery, art gallery hastings, hastings art gallery, Ceramics, Glass, Paintings" />
	<meta name="description" content="Art from <?= $strName?> - Local artists in the Hastings area" />
</head>
<body>
	<div class="container artists">
<?php
include('../../../includes/php/top.php');
?>	
			<div>
				<h1><?= $strName ?> at Leigh Gallery</h1>
<?php
	$i=0;
	while ( $productRow = $sthProd->fetch(PDO::FETCH_ASSOC))
	{
		$i++;
		$sqlPic = "SELECT pic_name  
					FROM pic 
					WHERE pic_product_no = ".$productRow['product_id'];
		
$sthPic = $pdo->query($sqlPic);
$picRow = $sthPic->fetch(PDO::FETCH_ASSOC);
?>
				<div class="artist-detail">
					<a href="/contact/">
						<img 
							src="../../../img/products/<?= $productRow['product_id'] ?>/thumb_<?= $picRow['pic_name'] ?>" 
							alt="Work from <?= $productRow['artist_name'] ?> <?= $productRow['artist_surname'] ?> (<?= $i ?>)" 
						/>
					</a>
					<h2><?= $productRow['product_name'] ?></h2>
					<p><?= $productRow['product_ref'] ?><br />
					<?= $productRow['product_price'] ?><br />
				</div>
<?php
	
	}
	if($i==0)
	{
?>
				<p>No works from this artist currently in stock, please check back soon</p>
<?php
	}
?>
			</div>
		</div>
<?php
include '../../../includes/php/footer.php';
?>
</body>
</html>