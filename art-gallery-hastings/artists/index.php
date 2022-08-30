<!doctype html>
<html language="en-GB">
<?php
define('APPLICATION', true);
include '../../includes/conn/conngrunt_front.php';
	
$sqlProd = "SELECT DISTINCT artist_id, artist_surname, artist_name FROM artist_new INNER JOIN product ON product_artist_no = artist_id
	ORDER BY artist_surname, artist_name";
//echo $sqlProd;
//exit;

//exit;
$artistlist = '';

$sthProd = $pdo->query($sqlProd);

while ( $productRow = $sthProd->fetch(PDO::FETCH_ASSOC))
{
	$artistlist = $artistlist . $productRow['artist_name'] . ' ' . $productRow['artist_surname'] . ', ';
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Leigh Gallery | Art Gallery in Hastings, East Sussex</title>
    <link href="../../includes/css/jk-02.css" rel="stylesheet" type="text/css" />
	<meta name="keywords" content="<?= $artistlist?>, leigh gallery, art gallery hastings, hastings art gallery, Ceramics, Glass, Paintings" />
	<meta name="description" content="Local artists in the Hastings area" />
</head>
<body>
	<div class="container home">
<?php
include('../../includes/php/top.php');
?>	
<div>
	<h1>Local artists in the Hastings area</h1>
<?php

$sthProd = $pdo->query($sqlProd);
$i=-1;
?>
	<div class="multi-column">
<?php
while ( $productRow = $sthProd->fetch(PDO::FETCH_ASSOC))
{
?>
		<h2><a href="list/?id=<?= $productRow['artist_id'] ?>&artist=<?= $productRow['artist_name'] ?>_<?= $productRow['artist_surname'] ?>"><?= $productRow['artist_surname'] ?>, <?= $productRow['artist_name'] ?></a></h2>
<?php
}
?>
	</div>
<?php
include '../../includes/php/footer.php';
?>
</body>
</html>