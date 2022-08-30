<?php
define('APPLICATION', true);
include '../../includes/conn/conngrunt_front.php';
if ( $strMode == 'product' )
{
	$sqlProd = "SELECT product_name, product_desc, product_price, product_type_no, product_artist_no, product_ref, product_star, artist_name, artist_surname FROM product 
		INNER JOIN artist_new ON artist_id = product_artist_no
		INNER JOIN type on type_id = product_type_no
		WHERE product_id = $intId";
	
	$sthProd = $pdo->query($sqlProd);
	$productRow = $sthProd->fetch();
	$strName = $productRow['product_name'];
}
else
{
	$sqlProd = "SELECT artist_name, artist_surname, artist_desc, artist_home 
		FROM artist_new
		WHERE artist_id = $intId";	
	
	echo $sqlProd;

	$sthProd = $pdo->query($sqlProd);
	$productRow = $sthProd->fetch();
	
	$strName = $productRow['artist_name']. ' ' . $productRow['artist_surname'];
}
?>
<!DOCTYPE html>
<html language="en-GB">
<head>
	<meta charset="utf-8">
	<title>Edit <?= $strName ?>  | Leigh Gallery</title>
    <link href="../../includes/css/jk-02.css" rel="stylesheet" type="text/css" />
	<meta name = "viewport" content = "user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width" />
</head>
<body>
<?php
include '../../includes/php/top.php';
?>
		<main>
<?php
include '../../includes/php/users.php';
?>
		<h1>Edit <?= $strName ?> </h1>
<?php
		if ( $strMissing <> '' )
		{
?>
		<p class="red"><?= $strMissing ?></p>
<?php
		}
	?>
	<div class="row">
	<?php
		if ( $strMode == 'product' )
		{
?>		
		<div class="half">
			<h2>Product Information</h2>
			<p>Required fields <span class="red">*</span></p>
			<form action="../change/?mode=product&amp;id=<?= $intId ?>" method="post" name="image" ENCTYPE="multipart/form-data" id="image">
				<fieldset>
					<legend>Product info</legend>
					<p>
						<label for="name">Title<span class="red"> *</span> </label>
						<input name="name" id="name" value="<?= $productRow['product_name'] ?>" />
					</p>
					<p>
						<label for="desc">Desc<span class="red"> *</span></label>
						<textarea name="desc" rows="3" id="desc"><?= $productRow['product_desc'] ?></textarea>
					</p>
					<p>
						<label for="artist">Artist<span class="red"> *</span></label>
						<select name="artist" id="artist">
<?php
							$sqlDoc = "SELECT artist_name, artist_id, artist_surname FROM artist_new ORDER BY artist_surname";
							$sthDoc = $pdo->query($sqlDoc);
							while ( $sqlDocRow = $sthDoc->fetch())
							{

?>
							<option value="<?=$sqlDocRow['artist_id']?>" 
								<? if ( intval( $productRow['product_artist_no']) == intval( $sqlDocRow['artist_id'] ) ) {echo ' selected=selected'; } ?>
								<?=$sqlDocRow['artist_surname']?>, <?=$sqlDocRow['artist_name']?>
							</option>
<?php 
							}
?>
						</select>
					</p>
					<p>
						<label for="price">Price<span class="red"> *</span> </label>
						<input name="price" id="price" size="4" style="width:auto;" value="<?= $productRow['product_price'] ?>" />
					</p>
					<p>
						<label for="type">Type<span class="red"> *</span></label>
						<select name="type" id="type">
<?php
							$sqlDoc = "SELECT type_name, type_id FROM type ORDER BY type_name";
							$sthDoc = $pdo->query($sqlDoc);
							while ( $sqlDocRow = $sthDoc->fetch())
							{
?>
							<option value="<?=$sqlDocRow['type_id']?><?php if ( intval( $productRow['product_type_no']) == intval( $sqlDocRow['type_id'] ) ) {echo ' selected=selected'; } ?>"><?= $sqlDocRow['type_name']?></option>
<?php 
							}
?>
						</select>
					</p>
					<p>
						<label for="ref">Ref<span class="red"> *</span> </label>
						<input name="ref" id="ref" size="8" style="width:auto;" value="<?= $productRow['product_ref'] ?>" />
					</p>
				</fieldset>
				<p><label>&nbsp;</label><input type="submit" class="btn"  value="Edit" /></p>
			</form>
		</div>
		<div class="half">
			<h2>Product Images</h2>
			<p>Click on an image to delete it</p>
			<div class="grid">
<?php
			$sqlDoc = "SELECT pic_name, pic_id, pic_star FROM pic WHERE pic_product_no = $intId";
			$sthDoc = $pdo->query($sqlDoc);
			while ( $sqlDocRow = $sthDoc->fetch())
			{
				
				$intStar = $sqlDocRow['pic_star'] == 0 ? 1 : 0;

?>
				<div class="admin-cont">
					<img alt="" src="../../img/products/<?= $intId ?>/thumb_<?= $sqlDocRow['pic_name']?>" class="admin-img" />

					<a onClick="return confirm('are you sure you want to delete <?=$sqlDocRow['pic_name']?>?')" href="../delete/?mode=pic&amp;id=<?= $intId ?>&amp;id2=<?=$sqlDocRow['pic_id']?>">
						<img src="../../trash.svg" alt="" class="icon-over" />
					</a>

					<a 
					   onClick="return confirm('are you sure you want to add <?=$sqlDocRow['pic_name']?> to the home page?')" #
					   href="../change/?mode=pic&amp;id=<?= $intId ?>&amp;id2=<?=$sqlDocRow['pic_id']?>&amp;star=<?=$intStar?>"
					>
						<img src="../../img/template/heart_<?= $sqlDocRow['pic_star'] ?>.svg" alt="" class="icon-over" />
					</a>
				</div>
<?php
			}
			
?>
			</div>
			<h2>Add More Images</h2>
			<form action="../upload/?mode=pic&amp;id=<?= $intId ?>" method="post" name="image" ENCTYPE="multipart/form-data" id="image">
				<fieldset>
					<legend>File info</legend>
					<p>
						<label for="file1">Images<span class="red"> *</span></label>
						<input name="file1[]" type="file" class="btn"  multiple="multiple" />
					</p>
				</fieldset>
				<p><label>&nbsp;</label><input type="submit" class="btn"  value="Add" /></p>
			</form>
		</div>
<?php
		}
		elseif ( $strMode == 'artist' )
		{
?>
		<div class="half">
			<h2>Artist Information</h2>
			<p>Required fields <span class="red">*</span></p>
			<form action="../change/?mode=artist&amp;id=<?= $intId ?>" method="post" name="image" id="image">
				<fieldset>
					<legend>Artist info</legend>
					<p>
						<label for="name">Name<span class="red"> *</span> </label>
						<input name="name" id="name" value="<?= $productRow['artist_name'] ?>" />
					</p>
					<p>
						<label for="surname">Surname<span class="red"> *</span> </label>
						<input name="surname" id="surname" value="<?= $productRow['artist_surname'] ?>" />
					</p>
					<p>
						<label for="desc">Desc</label>
						<textarea name="desc" rows="3" id="desc"><?= $productRow['artist_desc'] ?></textarea>
					</p>
				</fieldset>
				<p><label>&nbsp;</label><input type="submit" class="btn"  value="Edit" /></p>
			</form>
		</div>
<?php
		}
?>
</div>
</main>
</div>
<?php
include '../../includes/php/footer.php';
?>
</body>
</html>