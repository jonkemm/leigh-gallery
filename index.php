<?php
define('APPLICATION', true);
include 'includes/conn/conngrunt_front.php';


$sqlProd = "SELECT pic_product_no, pic_name, product_name, artist_name, artist_surname, pic_id
			FROM pic
			INNER JOIN product ON pic_product_no = product_id
			INNER JOIN artist_new ON product_artist_no = artist_id
			WHERE pic_star = 1
			ORDER BY pic_order
			LIMIT 4
			";	
$sthProd = $pdo->query($sqlProd);
$x=0;
while ( $productRow = $sthProd->fetch() )
{
	$picName[$x] = $productRow['pic_name'];
	$picId[$x] = $productRow['pic_id'];
	$productId[$x] = $productRow['pic_product_no'];
	$productName[$x] = $productRow['product_name'];
	$artistName[$x] = $productRow['artist_name'] . ' ' .$productRow['artist_surname'];
	$x++;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Leigh Gallery | Art Gallery in Hastings, East Sussex</title>
    <link href="includes/css/jk-02.css" rel="stylesheet" type="text/css" />
	<meta name="keywords" content="leigh gallery, art gallery hastings, hastings art gallery, Ceramics, Glass, Paintings" />
	<meta name="description" content="Our art gallery collection includes ceramics, glass and paintings from local artists in the Hastings area" />
</head>
<body>
	<div class="container home">
<?php
include('includes/php/top.php');
?>	
			<main>
				<div class="contact">
					<p>Established 1982
					<br>77 High Street , Old Town Hastings . TN34 3EL.
					<br>Tel: <a href="tel:+441424434090" class="link">01424 434 090</a> Email: <a href="mailto://mmleighhouse@f2s.com" class="link">mmleighhouse@f2s.com</a></p>
				</div>
				<div class="row front">
					<div class="left">
<?php for( $x=0; $x<2; $x++){ ?>
						<a href="art-gallery-hastings/detail/?id=<?= $productId[$x] ?>&amp;pic=<?=$picId[$x]?>" title="More art from <?= $artistName[$x] ?>">
							<img alt="<?= $productName[$x] ?> by <?= $artistName[$x] ?>" src="img/products/<?= $productId[$x]. '/thumb_'.$picName[$x] ?>" />
						</a>
<?php } ?>
					</div>
					<div class="center">
						<img src="img/template/shop-front.jpg" alt="Leigh Gallery Shop Front" />
					</div>
					<div class="right">
<?php for( $x=2; $x<4; $x++){ ?>
						<a href="art-gallery-hastings/detail/?id=<?= $productId[$x] ?>&amp;pic=<?=$picId[$x]?>" title="More art from <?= $artistName[$x] ?>">
							<img alt="<?= $productName[$x] ?> by <?= $artistName[$x] ?>" src="img/products/<?= $productId[$x]. '/thumb_'.$picName[$x] ?>" />
						</a>
<?php } ?>
					</div>
				</div>
				<div class="bg">
					<p>Leigh Gallery is in the heart of the 'Old Town' district in Hastings with its many galleries, restaurants and interesting shops.</p>
					<p>The High Street starts on the sea front with the fishing boats and Hastings Contemporary on the beach.</p>
					<p>Our gallery was established in 1982 in London's Bloomsbury area near Tavistock and Russell Squares. In 2001 we decided to move to Hastings.</p>
					<p>Masutaro Murata and Michael Ransom Witt</p>
				</div>
			</main>
		</div>
<?php
include('includes/php/footer.php');
?>	
	</div>
	<script type='application/ld+json'> 
{
  "@context": "https://www.schema.org",
  "@type": "ArtGallery",
  "name": "Leigh Gallery",
  "url": "leighgallery.co.uk",
  "image": "https://www.leighgallery.co.uk/images/template/shop-front.jpg",
  "description": "Our art gallery collection includes ceramics, glass and paintings from local artists in the Hastings area",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "77 High Street",
    "addressLocality": "Hastings",
    "addressRegion": "East Sussex",
    "postalCode": "TN34 3EL",
    "addressCountry": "England"
  },
  "hasMap": "https://www.google.com/maps/place/Leigh+Gallery/@50.857645,0.591662,13z/data=!4m5!3m4!1s0x0:0xa7c56430a203fd6!8m2!3d50.8576551!4d0.5916369?hl=en-GB",
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+44142434090",
    "contactType": "general"
  }
}
 </script>
</body>
</html>