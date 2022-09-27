<?php
if ($override = '')
{
	if (!defined('APPLICATION')) {
		header('HTTP/1.1 404 Not Found');
		echo "<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>404 Not Found</title>\n</head>";
		echo "<body>\n<h1>Not Found</h1>\n<p>The requested URL ".$_SERVER['REQUEST_URI']." was not found on this server.</p>\n";
		echo "<hr>\n\n</body></html>\n";
		exit;
	}
}
	$adminUser = 'leighga_dbuser';
	$adminPass = 'Pictur3!';
	$pdo = new PDO('mysql:host=213.171.200.74;dbname=leighga_penfold;charset=utf8', $adminUser, $adminPass);

if ( session_id() == '' ) { session_start(); }
setlocale(LC_MONETARY, 'en_UK');

isset($_REQUEST['id']) ? $intId = intval(($_REQUEST['id'])):$intId='';
isset($_REQUEST['pic']) ? $intPic = intval(($_REQUEST['pic'])):$intPic='';
if (isset($_SESSION['missing'])) { $strMissing = $_SESSION['missing'];$_SESSION['missing']='';}else{$strMissing='';}
// isset($_REQUEST['missing']) ? $strMissing = (($_REQUEST['missing'])):$strMissing='';
isset($_REQUEST['mode']) ? $strMode = (($_REQUEST['mode'])):$strMode='';
isset($_REQUEST['page']) ? $intPage = (($_REQUEST['page'])):$intPage=1;
isset($_REQUEST['type']) ? $intType = (($_REQUEST['type'])):$intType='';
isset($_REQUEST['limit']) ? $intLimit = (($_REQUEST['limit'])):$intLimit=20;
