<?php
define('APPLICATION', true);
include '../../includes/conn/conngrunt_front.php';

// if ($intId == '') return

	
$sqlProd = "SELECT 
		product_name, product_desc, type_name, product_price, product_ref, 
		pic_name, 
		artist_name, artist_surname, pic_y 
	FROM product 
	INNER JOIN pic ON pic_product_no = product_id
	INNER JOIN artist_new ON artist_id = product_artist_no
	INNER JOIN type on type_id = product_type_no
	WHERE product_id = $intId";
if ( $intPic <> '' ) {
		$sqlProd .="
	AND pic_id = $intPic";
}
$sqlProd .=" ORDER BY pic_id";

// echo $sqlProd;
// exit;
$sthProd = $pdo->query($sqlProd);
$productRow = $sthProd->fetch(PDO::FETCH_ASSOC);

$strDesc = '';
if ($productRow['product_desc'] <> "" )
{
	$strDesc = str_replace('\n',"<br />",$productRow['product_desc'] );
}
$strPageName = $productRow['product_name'] . ' by ' . $productRow['artist_name'] . ' ' . $productRow['artist_surname'];
$strName = $productRow['product_name'];
// echo 'name :'.$strName;
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?= $strPageName ?> | Leigh Gallery</title>
	<link href="../../includes/css/jk-02.css" rel="stylesheet" type="text/css" />
	<meta name="description" content="<?= $strPageName ?> for sale at Leigh Gallery, Hastings, East Sussex" />
	<meta name="keywords" content="<?php $strName ?>, ceramics, leigh gallery, gallery, hastings" />
</head>
<body>
<?php
include '../../includes/php/top.php';
?>
			<div>
				<h1><?= $strPageName;?></h1>
				<div class="row">
					<div class="product-detail half">
						<pre><?= $productRow['product_desc'];?></pre>
						<p>Reference no: <?= $productRow['product_ref'];?></p>
						<p>Price: <?= $productRow['product_price'];?></p>
					</div>
					<div class="buy">
						<p><a href="../../contact/" class="btn">Buy Now  &raquo;</a></p>
					</div>
				</div>
				<div class="row">
					<div class="scroll">
						<div id="magnify">
							<div class="large" id="large"></div>
							<img itemprop="image" class="small" id="small" alt="<?= $productRow['artist_name'];?> <?= $productRow['artist_surname'];?> - <?= $productRow['product_name'];?>" src="../../img/products/<?= $intId ?>/med_<?= $productRow['pic_name'] ?>" />
						</div>
					</div>
					<div class="details">
<?php
	$sqlPic = "SELECT * FROM pic WHERE pic_product_no = $intId ORDER BY pic_id ASC";
	$sthPic = $pdo->query($sqlPic);
	$strName = '';
	$i=0;
	while ( $picRow = $sthPic->fetch(PDO::FETCH_ASSOC) )
		{
			$i++;
?>
						<a href="../detail/?id=<?= $picRow['pic_product_no'] ?>&amp;pic=<?= $picRow['pic_id'] ?>">
							<img src="../../img/products/<?= $picRow['pic_product_no'] ?>/thumb_<?= $picRow['pic_name'] ?>" alt="<?= $productRow['artist_name'];?> <?= $productRow['artist_surname'];?> - <?= $productRow['product_name'] .' (' . $i;?>)" />
						</a>
<?php
		}
?>
					</div>
				</div>
			</div>
		</div>
<?php
include '../../includes/php/footer.php';
?>
	
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script type="text/javascript" src="../../includes/js/jquery.sticky.js"></script>
	<script type="text/javascript">
		function swap(imgIndex) {
			document['small'].src = imgIndex;
		}
		
		$(document).ready(function(){

			var native_width = 1200;
			var native_height = <?= $productRow['pic_y'] ?>;
		
			//Now the mousemove function
			$(".magnify").mousemove(function(e){
				//When the user hovers on the image, the script will first calculate
				//the native dimensions if they don't exist. Only after the native dimensions
				//are available, the script will show the zoomed version.
				if(!native_width && !native_height)
				{
					//This will create a new image object with the same image as that in .small
					//We cannot directly get the dimensions from .small because of the 
					//width specified to 200px in the html. To get the actual dimensions we have
					//created this image object.
					var image_object = new Image();
					image_object.src = $(".small").attr("src");
					
					//This code is wrapped in the .load function which is important.
					//width and height of the object would return 0 if accessed before 
					//the image gets loaded.
					native_width = image_object.width;
					native_height = image_object.height;
				}
				else
				{
					//x/y coordinates of the mouse
					//This is the position of .magnify with respect to the document.
					var magnify_offset = $(this).offset();
					//We will deduct the positions of .magnify from the mouse positions with
					//respect to the document to get the mouse positions with respect to the 
					//container(.magnify)
					var mx = e.pageX - magnify_offset.left;
					var my = e.pageY - magnify_offset.top;
					
					//Finally the code to fade out the glass if the mouse is outside the container
					if(mx < $(this).width() && my < $(this).height() && mx > 0 && my > 0)
					{
						$(".large").fadeIn(100);
					}
					else
					{
						$(".large").fadeOut(100);
					}
					if($(".large").is(":visible"))
					{
						//The background position of .large will be changed according to the position
						//of the mouse over the .small image. So we will get the ratio of the pixel
						//under the mouse pointer with respect to the image and use that to position the 
						//large image inside the magnifying glass
						var rx = Math.round(mx/$(".small").width()*native_width - $(".large").width()/2)*-1;
						var ry = Math.round(my/$(".small").height()*native_height - $(".large").height()/2)*-1;
						var bgp = rx + "px " + ry + "px";
						
						//Time to move the magnifying glass with the mouse
						var px = mx - $(".large").width()/2;
						var py = my - $(".large").height()/2;
						//Now the glass moves with the mouse
						//The logic is to deduct half of the glass's width and height from the 
						//mouse coordinates to place it with its center at the mouse coordinates
						
						//If you hover on the image now, you should see the magnifying glass in action
						$(".large").css({left: px, top: py, backgroundPosition: bgp});
					}
				}
			})
		})
	</script>
		<script src="https://thecodeplayer.com/uploads/js/prefixfree.js" type="text/javascript"></script>
		<script src="https://thecodeplayer.com/uploads/js/jquery-1.7.1.min.js" type="text/javascript"></script>
	
</body>
</html>