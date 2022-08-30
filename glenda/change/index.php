<?php
define('APPLICATION', true);
include '../../includes/conn/conngrunt_admin.php';

if (  $strMode == "product" ) // ---------------------------------------------------------------------------------------------
{
	// Validation
	if ( $strName == '' ) { $missing = 'Missing box: Name';}
	if ( $strPrice == '' ) { $missing = 'Missing box: Price';}
	if ( $strRef == '' ) { $missing = 'Missing box: Reference';}
	if ( $intStar == '' ) { $intStar = 0;}
	
	if ( $missing == '' )
	{
		$sql = "UPDATE product SET 
		product_name = '$strName',
		product_desc = '$strDesc',
		product_price = '$strPrice',
		product_ref = '$strRef',
		product_star = $intStar, 
		product_artist_no = $intArtist, 
		product_type_no = $intType
		WHERE product_id = $intId";
		
		$sthUpdate = $pdo->query($sql);
		
		$missing = $strName.' updated';
		header ('Location: ../edit/?id='.$intId.'&mode=product&missing='.$missing );
	}
}
elseif ($strMode == 'pic')
{
//	echo $intStar;
//	exit;
	
		$sql = "UPDATE pic SET 
		pic_star = $intStar
		WHERE pic_id = $intId2";
		
		$sthUpdate = $pdo->query($sql);
		
		$missing = ' image updated';
		header ('Location: ../edit/?id='.$intId.'&mode=product&missing='.$missing );
}
elseif (  $strMode == "artist" ) // ---------------------------------------------------------------------------------------------
{
	// Validation
	if ( $strName == '' ) { $missing = 'Missing box: Name';}
	if ( $strSurname == '' ) { $missing = 'Missing box: Surname';}
	
	if ( $missing == '' )
	{
		$sql = "UPDATE artist_new SET 
		artist_name = '$strName',
		artist_surname = '$strSurname',
		artist_desc = '$strDesc',
		artist_home = $intHome
		WHERE artist_id = $intId";
		
		$sthUpdate = $pdo->query($sql);
		
		$missing = $strName.' updated';
		header ('Location: ../edit/?id='.$intId.'&mode=artist&missing='.$missing );
	}
}
elseif ($strMode == 'star')
{
	$a=array();
	$z=0;
	foreach ($_POST['star'] as $selected_option) 
	{
		$z++;
//		array_push($a,$selected_option, $z);
		
		$sql = "UPDATE pic SET 
		pic_order = $z
		WHERE pic_id = $selected_option";
		
		$sthUpdate = $pdo->query($sql);
	}
	
		//print_r($a);
	
	
	
		
		$missing = ' star updated';
		header ('Location: ../?&missing='.$missing );
}
?>