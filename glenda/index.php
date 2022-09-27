<?php
define('APPLICATION', true);
include '../includes/conn/conngrunt_front.php';
ini_set('display_errors', 1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Leigh Gallery | Art Gallery in Hastings, East Sussex</title>
    <link href="../includes/css/jk-02.css" rel="stylesheet" type="text/css" />
	<meta name="keywords" content="leigh gallery, art gallery hastings, hastings art gallery, Ceramics, Glass, Paintings" />
	<meta name="description" content="Our art gallery collection includes ceramics, glass and paintings from local artists in the Hastings area" />
	<script src="../includes/js/sort-list.js"></script>
</head>
<body>
	<div class="container home">
<?php
include('../includes/php/top.php');
?>	
			<main>
<?php
include '../includes/php/users.php';
?>
				<h1>Admin Home</h1>
<?php if ( $strMissing <> '' ){ ?>				<p class="red"><?= $strMissing ?></p><?php } ?>

				<p>Required fields <span class="red">*</span></p>
				<div class="row">
					<div>
						<h2>Add Product</h2>
						<form action="upload/?mode=product" method="post" name="image" ENCTYPE="multipart/form-data">
							<fieldset>
								<legend>File info</legend>
								<p>
									<label for="file1">Pics<span class="red"> *</span></label>
									<input name="file1[]" type="file" multiple="multiple" />
								</p>
							</fieldset>
							<fieldset>
								<legend>Product info</legend>
								<p>
									<label for="name1">Title<span class="red"> *</span></label>
									<input name="name" id="name1" />
								</p>
								<p>
									<label for="desc1">Desc</label>
									<textarea name="desc" rows="3" id="desc1"></textarea>
								</p>
								<p>
									<label for="artist">Artist<span class="red"> *</span></label>
									<select name="artist" id="artist">
										<option value="">please choose...</option>
			<?php
										$sqlDoc = "SELECT artist_name, artist_id, artist_surname FROM artist_new ORDER BY artist_surname";
										$sthDoc = $pdo->query($sqlDoc);
										while ( $sqlDocRow = $sthDoc->fetch())
										{
			?>
										<option value="<?=$sqlDocRow['artist_id']?>"><?=$sqlDocRow['artist_surname']?>, <?=$sqlDocRow['artist_name']?></option>
			<?php 
										}
			?>
									</select>
								</p>
								<p>
									<label for="price1">Price <span class="red"> *</span></label>
									<input name="price" id="price1" size="4" />
								</p>
								<p>
									<label for="type">Type<span class="red"> *</span></label>
									<select name="type" id="type">
										<option value="">please choose...</option>
			<?php
										$sqlDoc = "SELECT type_name, type_id FROM type ORDER BY type_name";
										$sthDoc = $pdo->query($sqlDoc);
										while ( $sqlDocRow = $sthDoc->fetch())
										{

			?>
										<option value="<?=$sqlDocRow['type_id']?>"><?=$sqlDocRow['type_name']?></option>
			<?php 
										}
			?>
									</select>
								</p>
								<p>
									<label for="ref">Ref <span class="red"> *</span></label>
									<input name="ref" id="ref" size="8" />
								</p>
							</fieldset>
							<p><label>&nbsp;</label><input type="submit" value="Add" /></p>
						</form>
					</div>
					<div>	
						<h2>Add Artist</h2>
						<form action="insert/?mode=artist" method="post" name="image">
							<fieldset>
								<legend>Artist info</legend>
								<p>
									<label for="name">Name<span class="red"> *</span> </label>
									<input name="name" id="name" />
								</p>
								<p>
									<label for="surname">Surname<span class="red"> *</span> </label>
									<input name="surname" id="surname" />
								</p>
							</fieldset>
							<p><label>&nbsp;</label><input type="submit" id="submit" value="Add" /></p>
						</form>
					</div>
					<section id="star">
						<h2>Manage hompage images</h2>
						<form action="change/?mode=star&amp;id=<?= $intId ?>" method="post" name="star">
							<fieldset>
								<legend>Star info</legend>
								<ul id="sortlist">
<?php
										$sqlDoc = "SELECT pic_id, pic_name, pic_product_no FROM pic WHERE pic_star = 1 ORDER BY pic_order";
										$sthDoc = $pdo->query($sqlDoc);
										while ( $sqlDocRow = $sthDoc->fetch())
										{

?>
										<li>
											<img 
												src="../img/products/<?=$sqlDocRow['pic_product_no']?>/thumb_<?=$sqlDocRow['pic_name']?>" alt=""/>
											<input type="hidden" value="<?=$sqlDocRow['pic_id']?>" name="star[]" /<
										</li>
<?php 
										}
?>
								</ul>
								
							</fieldset>
							<input type="submit" value="Update" />
						</form>
					</section>
					<script>
					window.addEventListener("DOMContentLoaded", function(){
					slist("sortlist");
					});
					</script>
				</div>
			</main>
		</div>
<?php
include('../includes/php/footer.php');
?>	
	</div>
</body>
</html>