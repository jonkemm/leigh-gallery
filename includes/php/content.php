<?php
if (!isset($intLimit)) { $intLimit = 20; }
if (!isset($intOffset)) {$intOffset = 0; }
if (!isset($intPage)) { $intPage = 1; }
$intTotal=0;
// ini_set('display_errors', 1);
$sqlProd = "SELECT (
				SELECT COUNT(product_id) AS countVar 
				FROM product
				WHERE product_type_no = " . $intCategory . "
			) AS countVar, 
			product_id, artist_surname, artist_name, artist_id, product_name, product_ref, product_price  			
			FROM artist_new 
			INNER JOIN product ON artist_id = product_artist_no 
			WHERE product_type_no = " . $intCategory . "
			ORDER BY artist_surname, artist_name
			LIMIT " . $intOffset . "," . $intLimit;
					   
$strName = '';
	
$sthProd = $pdo->query($sqlProd);
	
while ( $productRow = $sthProd->fetch() )
{
	$intTotal =  $productRow['countVar'];
	// echo $intTotal;
	$strName = $strName.$productRow['product_name'] . ' '.$productRow['artist_name'] . ' '. $productRow['artist_surname'] . ', ' ;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?= $strPageName; ?> | Leigh Gallery</title>
	<link href="../../includes/css/jk-02.css" rel="stylesheet" type="text/css" />
	<meta name="description" content="<?= $description ?>" />
	<meta name="keywords" content="<?php $strName ?>, <?= $strPageName?>, leigh gallery, gallery, hastings" />
</head>
<body>
<div class="container">
<?php
include('../../includes/php/top.php');
?>	
			<main>
				<h1><?= $strPageName ?></h1>
<?php
// include '../../includes/php/pagejump.php';
?>
<?php
	$sthProd = $pdo->query($sqlProd);
	while ( $productRow = $sthProd->fetch() )
	{
		// echo $productRow['product_id'];
		$sqlPic = "SELECT pic_name  
					FROM pic 
					WHERE pic_product_no = ".$productRow['product_id']. "
					ORDER BY pic_id
					";
		$sthPic = $pdo->query($sqlPic);
		if($picRow = $sthPic->fetch()){
			$thumb = $picRow['pic_name'];
		}
		$pId = $productRow['product_id'];
		if($productRow['artist_surname'] =='') $strName = ' . . ';
		$aName = str_replace( ' ','&nbsp;',$productRow['artist_surname'] );
		$aFName = $productRow['artist_name'];
?>
		<a href="../detail/?id=<?= $pId ?>&amp;artist=<?= $aFName ?>_<?= $aName ?>" class="row">
			<div class="row product">
				<img src="../../img/products/<?= $pId ?>/thumb_<?= $thumb ?>" alt="" />
				<div class="details half">
					<div class="text-cont">
						<h2><?= $productRow['product_name'] ?></h2>
						<p><?= $productRow['artist_name'] ?> <?= $productRow['artist_surname'] ?><br />
						<?= $productRow['product_ref'] ?><br />
						<?= $productRow['product_price'] ?></p>
					</div>
				</div>
				<div class="link-cont half">
					<a class="btn" href="../detail/?id=<?= $productRow['product_id'] ?>&amp;artist=<?= $productRow['artist_name'] ?>_<?= $aName ?>">More Details &raquo;</a>
				</div>
			</div>
		</a>
<?php
	}
?>

</main>
</div>
<?php
include '../../includes/php/footer.php';
?>
</body>
</html>