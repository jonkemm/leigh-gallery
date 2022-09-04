<?php
header("Content-Type: application/rss+xml; charset=ISO-8859-1");
define('APPLICATION', true);
include 'includes/conn/conngrunt_front.php'; 

	
	echo '<?xml version="1.0" encoding="UTF-8"?>';
	?>
<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
   <url>
      <loc>https://www.leighgallery.co.uk/</loc>
      <changefreq>monthly</changefreq>
      <priority>1.0</priority>
   </url>
   <url>
      <loc>https://www.leighgallery.co.uk/accessibility/</loc>
      <changefreq>monthly</changefreq>
      <priority>0.1</priority>
   </url>
   <url>
      <loc>https://www.leighgallery.co.uk/art-gallery-hastings/ceramics/</loc>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
   <url>
      <loc>https://www.leighgallery.co.uk/art-gallery-hastings/other/</loc>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
   <url>
      <loc>https://www.leighgallery.co.uk/art-gallery-hastings/glass/</loc>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
   <url>
      <loc>https://www.leighgallery.co.uk/art-gallery-hastings/paintings/</loc>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
   <url>
      <loc>https://www.leighgallery.co.uk/contact/</loc>
      <changefreq>yearly</changefreq>
      <priority>0.5</priority>
   </url>
   <url>
      <loc>https://www.leighgallery.co.uk/artists/</loc>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
<?php
	$sql = "SELECT product_id FROM product INNER JOIN artist_new ON product_artist_no = artist_id GROUP BY product_id ORDER BY product_id DESC";
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
	$sql = "SELECT artist_id FROM artist_new INNER JOIN product ON product_artist_no = artist_id GROUP BY artist_id ORDER BY artist_id DESC";
	
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