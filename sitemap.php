<?php
header("Content-Type: application/rss+xml; charset=ISO-8859-1");
define('APPLICATION', true);
include 'includes/conn/conngrunt_front.php'; 

	
	echo '<?xml version="1.0" encoding="UTF-8"?>';
	?>
<urlset xmlns="https://www.google.com/schemas/sitemap/0.84">
<?php
	$sql = "SELECT product_id FROM product INNER JOIN artist_new ON product_artist_no = artist_id ORDER BY product_id DESC";
	$result = $pdo->query($sql);
	$x=0;
	while ( $row = $result->fetch() )
	{
?>
   <url>
      <loc>https://www.leighgallery.co.uk/art-gallery-hastings/detail/?id=<?= $row['product_id'] ?></loc>
      <changefreq>monthly</changefreq>
      <priority>0.8</priority>
   </url>
<?php
	}
?>
<?php
	$sql = "SELECT artist_id FROM artist_new INNER JOIN product ON product_artist_no = artist_id ORDER BY artist_id DESC";
	
	$result = $pdo->query($sql);
	$x=0;
	while ( $row = $result->fetch() )
	{
?>
   <url>
      <loc>https://www.leighgallery.co.uk/art-gallery-hastings/artists/?artist=<?= $row['artist_id'] ?></loc>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
<?php
	}
?>
</urlset>