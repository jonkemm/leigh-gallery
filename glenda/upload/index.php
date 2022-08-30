<?php
define('APPLICATION', true);
include '../../includes/conn/conngrunt_admin.php';
if ( $strMode == 'product' )
{
	//error_reporting(E_ALL);
	// we first include the upload class, as we will need it here to deal with the uploaded file
	include('class.upload.php');
	// add to database
	$sql = "INSERT INTO product (
	 product_name, product_desc, product_artist_no, product_price, product_type_no, product_star, product_ref 
	 ) VALUES ( 
	 '$strName','$strDesc',$intArtist,'$strPrice','$intType','$intStar','$strRef' 
	 )";
	//echo $sql;
	//exit();
	$sthInsert= $pdo->query($sql);
	$intId = $pdo->lastInsertId();
	// where to put the images?
	$dir_dest = '../../img/products/'.$intId.'/';
	$xcount = 0;
	//upload pictures
	if (!file_exists($dir_dest)) {
		mkdir($dir_dest, 0777, true);
	}
	// ---------- MULTIPLE UPLOADS ----------
	$files = array();
	foreach ($_FILES['file1'] as $k => $l) {
		foreach ($l as $i => $v) {
			if (!array_key_exists($i, $files))
			
				$files[$i] = array();
				$files[$i][$k] = $v;
			
		}
	}
	// now we can loop through $files, and feed each element to the class
	foreach ($files as $file) 
	{
		// we instanciate the class for each element of $file --------------------------------------------------------------------
		$handle = new \Verot\Upload\Upload($file);

		if ($handle->uploaded) {
			// ---------------------- find ration -----------------
			
			$intWidth = $handle->image_src_x;
			$intHeight = $handle->image_src_y;
			$ratio = $intHeight / $intWidth;
			// -----------
			$handle->image_watermark       = "watermark_lar.png";
			$handle->image_watermark_position = 'BR';
			// we now process the image a second time, with some other settings
			$handle->image_resize            = true;
			$handle->image_ratio_y           = true;
			$handle->image_x                 = 1200;
			$handle->image_y                 = 1200 * $ratio;
			$intHeight = 1200 * $ratio;
			//echo 1200 * $ratio;
			//exit;
			$handle->file_name_body_pre = 'large_';
			
			//destination directory
			$handle->Process($dir_dest);
			// we check if everything went OK
			if ($handle->processed) {
			} else {
				// one error occured
				$missing=$missing. 'Not processed:' . $handle->error . '<br />';
			}
		} else {
			// Failed
				$missing=$missing. 'Not uploaded:' . $handle->error . '<br />';
		}
		// we instanciate the class for each element of $file --------------------------------------------------------------------
		$handle = new \Verot\Upload\Upload($file);
		if ($handle->uploaded) {
			// -----------
			$handle->image_watermark       = "watermark_lar.png";
			$handle->image_watermark_position = 'BR';
			// we now process the image a second time, with some other settings
			$handle->image_resize            = true;
			$handle->image_ratio_y           = true;
			$handle->image_x                 = 830;
			$handle->image_y                 = 830 * $ratio;
			$handle->file_name_body_pre = 'front_';
			
			//destination directory
			$handle->Process($dir_dest);
			// we check if everything went OK
			if ($handle->processed) {
			} else {
				// one error occured
				$missing=$missing. 'Not processed:' . $handle->error . '<br />';
			}
		} else {
			// Failed
				$missing=$missing. 'Not uploaded:' . $handle->error . '<br />';
		}
		// we instanciate the class for each element of $file --------------------------------------------------------------------
		$handle = new \Verot\Upload\Upload($file);
		if ($handle->uploaded) {
			// -----------
			$handle->image_watermark       = "watermark_med.png";
			$handle->image_watermark_position = 'BR';
			// we now process the image a second time, with some other settings
			$handle->image_resize            = true;
			$handle->image_ratio_y           = true;
			$handle->image_x                 = 600;
			$handle->image_y                 = 600 * $ratio;
			$handle->file_name_body_pre = 'med_';
			
			//destination directory
			$handle->Process($dir_dest);
			// we check if everything went OK
			if ($handle->processed) {
			} else {
				// one error occured
				$missing=$missing. 'Not processed:' . $handle->error . '<br />';
			}
		} else {
			// Failed
				$missing=$missing. 'Not uploaded:' . $handle->error . '<br />';
		}
		// we instanciate the class for each element of $file --------------------------------------------------------------------
		$handle = new \Verot\Upload\Upload($file);
		if ($handle->uploaded) {
			// -----------
			// we now process the image a second time, with some other settings
			$handle->image_resize            = true;
			$handle->image_ratio_y           = true;
			$handle->image_x                 = 100;
			$handle->image_y                 = 100 * $ratio;
			$handle->file_name_body_pre = 'thumb_';
			
			//destination directory
			$handle->Process($dir_dest);
			// we check if everything went OK
			if ($handle->processed) {
				// everything was fine !
				$strFilename1 = $handle->file_dst_name;
				// rename file, add prefix
				$strFilename1 = substr( $strFilename1, strpos( $strFilename1, 'thumb_') + 6);
			} else {
				// one error occured
				$missing=$missing. 'Not processed:' . $handle->error . '<br />';
			}
		} else {
			// Failed
				$missing=$missing. 'Not uploaded:' . $handle->error . '<br />';
		}
		$xcount = $xcount+1;
		#
		
		
		
		// add to database
		$sql = "INSERT INTO pic (
		 pic_product_no, pic_name, pic_x, pic_y
		 ) VALUES ( 
		 $intId,'$strFilename1',  1200, $intHeight  
		 )";
		 //echo $sql;
		 //exit;
		$sthInsert= $pdo->query($sql);
		
		
		
		
		
		//$intId = $pdo->lastInsertId();
	}
	$missing = $missing . $xcount . ' pics uploaded';
	header('Location: ../edit/?mode=product&id='.$intId.'missing='.$missing);

}
elseif ( $strMode == 'pic' )
{
	error_reporting(E_ALL);
	// we first include the upload class, as we will need it here to deal with the uploaded file
	include('class.upload.php');
	// where to put the images?
	$dir_dest = '../../img/products/'.$intId.'/';
	$xcount = 0;
	//upload pictures
	if (!file_exists($dir_dest)) {
		mkdir($dir_dest, 0777, true);
	}
	// ---------- MULTIPLE UPLOADS ----------
	$files = array();
	foreach ($_FILES['file1'] as $k => $l) {
		foreach ($l as $i => $v) {
			if (!array_key_exists($i, $files))
			
				$files[$i] = array();
				$files[$i][$k] = $v;
			
		}
	}
	// now we can loop through $files, and feed each element to the class
	foreach ($files as $file) {
		// we instanciate the class for each element of $file --------------------------------------------------------------------
		$handle = new \Verot\Upload\Upload($file);
		if ($handle->uploaded) {
			// ---------------------- find ration -----------------
			
			$intWidth = $handle->image_src_x;
			$intHeight = $handle->image_src_y;
			$ratio = $intHeight / $intWidth;
			// -----------
			$handle->image_watermark       = "watermark_lar.png";
			$handle->image_watermark_position = 'BR';
			// we now process the image a second time, with some other settings
			$handle->image_resize            = true;
			$handle->image_ratio_y           = true;
			$handle->image_x                 = 1200;
			$handle->image_y                 = 1200 * $ratio;
			$intHeight = 1200 * $ratio;
			$handle->file_name_body_pre = 'large_';
			
			//destination directory
			$handle->Process($dir_dest);
			// we check if everything went OK
			if ($handle->processed) {
			} else {
				// one error occured
				$missing=$missing. 'Not processed:' . $handle->error . '<br />';
			}
		} else {
			// Failed
				$missing=$missing. 'Not uploaded:' . $handle->error . '<br />';
		}
		// we instanciate the class for each element of $file --------------------------------------------------------------------
		$handle = new \Verot\Upload\Upload($file);
		if ($handle->uploaded) {
			// -----------
			$handle->image_watermark       = "watermark_lar.png";
			$handle->image_watermark_position = 'BR';
			// we now process the image a second time, with some other settings
			$handle->image_resize            = true;
			$handle->image_ratio_y           = true;
			$handle->image_x                 = 830;
			$handle->image_y                 = 830 * $ratio;
			$handle->file_name_body_pre = 'front_';
			
			//destination directory
			$handle->Process($dir_dest);
			// we check if everything went OK
			if ($handle->processed) {
			} else {
				// one error occured
				$missing=$missing. 'Not processed:' . $handle->error . '<br />';
			}
		} else {
			// Failed
				$missing=$missing. 'Not uploaded:' . $handle->error . '<br />';
		}
		// we instanciate the class for each element of $file --------------------------------------------------------------------
		$handle = new \Verot\Upload\Upload($file);
		if ($handle->uploaded) {
			// -----------
			$handle->image_watermark       = "watermark_med.png";
			$handle->image_watermark_position = 'BR';
			// we now process the image a second time, with some other settings
			$handle->image_resize            = true;
			$handle->image_ratio_y           = true;
			$handle->image_x                 = 600;
			$handle->image_y                 = 600 * $ratio;
			$handle->file_name_body_pre = 'med_';
			
			//destination directory
			$handle->Process($dir_dest);
			// we check if everything went OK
			if ($handle->processed) {
			} else {
				// one error occured
				$missing=$missing. 'Not processed:' . $handle->error . '<br />';
			}
		} else {
			// Failed
				$missing=$missing. 'Not uploaded:' . $handle->error . '<br />';
		}
		// we instanciate the class for each element of $file --------------------------------------------------------------------
		$handle = new \Verot\Upload\Upload($file);
		if ($handle->uploaded) {
			// -----------
			// we now process the image a second time, with some other settings
			$handle->image_resize            = true;
			$handle->image_ratio_y           = true;
			$handle->image_x                 = 100;
			$handle->image_y                 = 100 * $ratio;
			$handle->file_name_body_pre = 'thumb_';
			
			//destination directory
			$handle->Process($dir_dest);
			// we check if everything went OK
			if ($handle->processed) {
				// everything was fine !
				$strFilename1 = $handle->file_dst_name;
				// rename file, add prefix
				$strFilename1 = substr( $strFilename1, strpos( $strFilename1, 'thumb_') + 6);
			} else {
				// one error occured
				$missing=$missing. 'Not processed:' . $handle->error . '<br />';
			}
		} else {
			// Failed
				$missing=$missing. 'Not uploaded:' . $handle->error . '<br />';
		}
		$xcount = $xcount+1;
		// add to database
		$sql = "INSERT INTO pic (
		 pic_product_no, pic_name, pic_x, pic_y
		 ) VALUES ( 
		 $intId,'$strFilename1',  1200, $intHeight 
		 )";
		 //echo $sql;
		 //exit;
		$sqlRS = $pdo->query($sql);
	}
	$missing = $missing . $xcount . ' pics uploaded';
	header('Location: ../edit/?mode=product&id='.$intId.'&missing='.$missing);

}
?>