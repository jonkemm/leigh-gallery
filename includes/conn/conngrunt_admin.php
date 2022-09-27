<?php
if ($override = '')
{
	if (!defined('APPLICATION')) {
		header('HTTP/1.1 404 Not Found');
		echo "<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html language='en-GB'><head>\n<title>404 Not Found</title>\n</head>";
		echo "<body>\n<h1>Not Found</h1>\n<p>The requested URL ".$_SERVER['REQUEST_URI']." was not found on this server.</p>\n";
		echo "<hr>\n\n</body></html>\n";
		exit;
	}
}
	$gruntUser = 'leighga_dba';
	$gruntPass= 'ZuluZebra25!';

	$pdo = new PDO('mysql:host=213.171.200.74;dbname=leighga_penfold;charset=utf8', $gruntUser, $gruntPass);

	
if ( session_id() == '' )
{
    session_start();
}
setlocale(LC_MONETARY, 'en_UK');

set_time_limit ( 600 );

$dblTotal = 0;
$secure = '';
$strFilename1 = '';
$intHeight = '';

$intSessionUser = ''; if (isset($_SESSION['user'])){$intSessionUser = $_SESSION['user'];}
if ( $intSessionUser == '' ) { header ('Location: ../../'); }

$intCurrent = 0; if (isset($_SESSION['current_record'])){$intCurrent = intval($_SESSION['current_record']);}
$intSessionTotal = ''; if (isset($_SESSION['total_no'])){$intSessionTotal = $_SESSION['total_no'];}

$strMode = ''; if (isset($_REQUEST['mode'])){$strMode = ($_REQUEST['mode']);}
$email = ''; if (isset($_REQUEST['email'])){$email = ($_REQUEST['email']);}
$password = ''; if (isset($_REQUEST['password'])){$password = ($_REQUEST['password']);}
$missing = ''; if (isset($_REQUEST['missing'])){$missing = ($_REQUEST['missing']);}

//Cart
$intId = '';if (isset($_REQUEST['id'])){$intId = intval(($_REQUEST['id']));}
$intId2 = '';if (isset($_REQUEST['id2'])){$intId2 = intval(($_REQUEST['id2']));}
$intQty = '';if (isset($_REQUEST['qty'])){$intQty = intval(($_REQUEST['qty']));}
$intPic = '';if (isset($_REQUEST['pic'])){$intPic = intval(($_REQUEST['pic']));}
$intStar = '';if (isset($_REQUEST['star'])){$intStar = $_REQUEST['star'];}

$intType = '';if (isset($_REQUEST['type'])){$intType = ($_REQUEST['type']);}
$intMode = '';if (isset($_REQUEST['mode'])){$intMode = intval(($_REQUEST['mode']));}
$intCategory = '';if (isset($_REQUEST['category'])){$intCategory = intval(($_REQUEST['category']));}
$intArtist = '';if (isset($_REQUEST['artist'])){$intArtist = intval(($_REQUEST['artist']));}
$intPage = '';if (isset($_REQUEST['page'])){$intPage = intval(($_REQUEST['page']));}
$intLimit = '';if (isset($_REQUEST['limit'])){$intLimit = intval(($_REQUEST['limit']));}

$intStar = '';if (isset($_REQUEST['star'])){$intStar = intval(($_REQUEST['star']));}
$intHome = 0;if (isset($_REQUEST['home'])){$intHome = intval(($_REQUEST['home']));}

$strTypeName = '';if (isset($_REQUEST['typename'])){$strTypeName = str_replace("&","&amp;",($_REQUEST['typename']));}
$strArtistName = '';if (isset($_REQUEST['artistname'])){$strArtistName = str_replace("&","&amp;",($_REQUEST['artistname']));}
$strSort = '';if (isset($_REQUEST['sort'])){$strSort = str_replace("&","&amp;",($_REQUEST['sort']));}

$strName = '';if (isset($_REQUEST['name'])){$strName = str_replace("&","&amp;",($_REQUEST['name']));}
$strSurname = '';if (isset($_REQUEST['surname'])){$strSurname = str_replace("&","&amp;",($_REQUEST['surname']));}
$strDesc = '';if (isset($_REQUEST['desc'])){$strDesc = str_replace("&","&amp;",($_REQUEST['desc']));}
$strPrice = '';if (isset($_REQUEST['price'])){$strPrice = str_replace("&","&amp;",($_REQUEST['price']));}
$strRef = '';if (isset($_REQUEST['ref'])){$strRef = str_replace("&","&amp;",($_REQUEST['ref']));}

?>