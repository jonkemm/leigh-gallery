<?php
define('APPLICATION', true);
include '../../includes/conn/conngrunt_admin.php';
//ini_set('display_errors', 1);

$dirname = '../../img/products/'.$intId.'/';

if ( $strMode == 'product' )
{
	$dirname = '../../img/products/'.$intId.'/';	
	$sql = "SELECT pic_name FROM pic WHERE pic_product_no = $intId";
	$sthDoc = $pdo->query($sql);
	while ( $sqlRow = $sthDoc->fetch())
	{

		unlink($dirname.'thumb_'.$sqlRow['pic_name']);
		unlink($dirname.'med_'.$sqlRow['pic_name']);
		unlink($dirname.'large_'.$sqlRow['pic_name']);
		unlink($dirname.'front_'.$sqlRow['pic_name']);
		echo $sqlRow['pic_name'];
	}
	rmdir($dirname);
	$missing='Product deleted: '.$strName;
	$sql = "DELETE FROM product WHERE product_id = $intId";
	$sthDoc = $pdo->query($sql);
	$sql = "DELETE FROM pic WHERE pic_product_no = $intId";
	$sthDoc = $pdo->query($sql);
	header('Location: ../view/?mode=product&id='.$intId.'&missing='.$missing);
	exit;
	
}
elseif ( $strMode == 'pic' )
{
	if ( file_exists( '../../img/products/'.$intId.'/thumb_'.$strName ) )
	{
		unlink('../../img/products/'.$intId.'/thumb_'.$strName);
		unlink('../../img/products/'.$intId.'/med_'.$strName);
		unlink('../../img/products/'.$intId.'/large_'.$strName);
		unlink('../../img/products/'.$intId.'/front_'.$strName);
	}
	$missing='Image deleted: '.$strName;
	$sql = "DELETE FROM pic WHERE pic_id = $intId2";
	$sthDoc = $pdo->query($sql);
	header('Location: ../edit/?mode=product&id='.$intId.'&missing='.$missing);
	exit;
}
elseif ( $strMode == 'artist' )
{	
	// Select products related to artist	
	$sqlArtist = "SELECT * FROM product WHERE product_artist_no = $intId";
	$sqlArtistRS = $pdo->query($sqlArtist);

	$sql = "DELETE FROM product WHERE product_artist_no = $intId";
	$sthDoc = $pdo->query($sql);
	$sql = "DELETE FROM pic WHERE pic_product_no = $intId";
	$sthDoc = $pdo->query($sql);
	while ( $sqlArtistRow = $sthDoc->fetch())
	{
		$intId = $sqlArtistRow['product_id'];
		$dirname = '../../img/products/'.$intId.'/';
		$sql = "SELECT pic_name FROM pic WHERE pic_product_no = $intId";
		$sqlRS = $pdo->query($sql);
		while ( $sqlRow = $sqlRS->fetch())
		{
			unlink($dirname.'thumb_'.$sqlRow['pic_name']);
			unlink($dirname.'med_'.$sqlRow['pic_name']);
			unlink($dirname.'large_'.$sqlRow['pic_name']);
			unlink($dirname.'front_'.$sqlRow['pic_name']);
		}
		if ( is_dir( $dirname ) ){
			rmdir($dirname);
		}
	}
	$sql = "DELETE FROM artist_new WHERE artist_id = $intId";
	$sthDoc = $pdo->query($sql);
	$missing='Artist deleted: '.$strName;
	header('Location: ../view/?mode=artist&id='.$intId.'&missing='.$missing);
	exit;
}

// if ( $strMode == 'test' )
// {
// 	// $sql = "SELECT product_id FROM product";
// 	// $sqlRS = $pdo->query($sql);
// 	// 	$x=0;	
// 	// while ( $sqlRow = $sqlRS->fetch())
// 	// {
// 	// 	if( file_exists( $dirname ) ){
// 	// 		$x++;
// 	// 		echo($x.' '.$dirname.'<br>');
// 	// 	}
		 
// 	// }

	
// // $entries = scandir($dirname);
// // $filelist = array();
// // $x=0;
// // foreach($entries as $entry) {
// // 	$x++;
// // 	echo($x.' '.$entry.'<br>');
	
// 	$sql = "SELECT product_id FROM product";
// 	$sqlRS = $pdo->query($sql);
// 		$x=0;	
// 	while ( $sqlRow = $sqlRS->fetch())
// 	{
// 		if( file_exists( $dirname.$sqlRow['product_id'] ) ){
// 			$x++;
// 			echo($x.' '.$dirname.' '.$sqlRow['product_id'].'<br>');
// 		}
		 
// 	}

//     // if (strpos($entry, "te") === 0) {
//     //     $filelist[] = $entry;
//     // }
// // }

// 	exit;

// }


?>