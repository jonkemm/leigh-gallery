<?php
define('APPLICATION', true);
include '../../includes/conn/conngrunt_admin.php';
$allowedExts = array("gif", "jpeg", "jpg","JPG","GIF","JPEG", "png", "pdf");
	
if ( $strMode == 'artist' )
{
	if ( $strName == '' ) { $missing = 'Missing box: Name';}
	if ( $strSurname == '' ) { $missing = 'Missing box: Surname';}
	$sql = "INSERT INTO artist_new ( artist_name, artist_surname, artist_desc ) VALUES ( '$strName', '$strSurname', '$strDesc')";
	
	
	$sqlRS = $pdo->query($sql);
	
	
	$missing = 'Artist added';
}
header('Location: ../index.php?missing='.$missing);
?>