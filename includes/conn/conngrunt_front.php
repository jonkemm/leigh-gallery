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
	include '../ini.php';
	$pdo = new PDO('mysql:host=213.171.200.74;dbname=leighga_penfold;charset=utf8', $adminUser, $adminPass);

//	$pdo = new PDO('mysql:host=example.com;dbname=database', 'username', 'password');
//$statement = $pdo->query("SELECT 'Hello, dear MySQL user!' AS _message FROM DUAL");
//$row = $statement->fetch(PDO::FETCH_ASSOC);
//echo htmlentities($row['_message']);
if ( session_id() == '' )
{
    session_start();
}
setlocale(LC_MONETARY, 'en_UK');

isset($_REQUEST['id']) ? $intId = intval(($_REQUEST['id'])):$intId='';
isset($_REQUEST['pic']) ? $intPic = intval(($_REQUEST['pic'])):$intPic='';
if (isset($_SESSION['missing'])) { $strMissing = $_SESSION['missing'];$_SESSION['missing']='';}else{$strMissing='';}
// isset($_REQUEST['missing']) ? $strMissing = (($_REQUEST['missing'])):$strMissing='';
isset($_REQUEST['mode']) ? $strMode = (($_REQUEST['mode'])):$strMode='';
isset($_REQUEST['page']) ? $intPage = (($_REQUEST['page'])):$intPage=1;
isset($_REQUEST['limit']) ? $intLimit = (($_REQUEST['limit'])):$intLimit=20;

// $dblTotal = 0;
// $secure = '';

// $intSessionUser = ''; if (isset($_SESSION['user'])){$intSessionUser = $_SESSION['user'];}
// $intCurrent = 0; if (isset($_SESSION['current_record'])){$intCurrent = intval($_SESSION['current_record']);}
// $intSessionTotal = ''; if (isset($_SESSION['total_no'])){$intSessionTotal = $_SESSION['total_no'];}

// $strMode = ''; if (isset($_REQUEST['mode'])){$strMode = ($_REQUEST['mode']);}
// $strOrder = ''; if (isset($_REQUEST['order'])){$strOrder = ($_REQUEST['order']);}
// $email = ''; if (isset($_REQUEST['email'])){$email = ($_REQUEST['email']);}
// $password = ''; if (isset($_REQUEST['password'])){$password = ($_REQUEST['password']);}
// $missing = ''; if (isset($_REQUEST['missing'])){$missing = ($_REQUEST['missing']);}

// //Cart
// $intId = '';if (isset($_REQUEST['id'])){$intId = intval(($_REQUEST['id']));}
// $intQty = '';if (isset($_REQUEST['qty'])){$intQty = intval(($_REQUEST['qty']));}
// $intPic = '';if (isset($_REQUEST['pic'])){$intPic = intval(($_REQUEST['pic']));}

// $intType = '';if (isset($_REQUEST['type'])){$intType = ($_REQUEST['type']);}
// $intMode = '';if (isset($_REQUEST['mode'])){$intMode = intval(($_REQUEST['mode']));}
// $intCategory = '';if (isset($_REQUEST['category'])){$intCategory = intval(($_REQUEST['category']));}
// $intArtist = '';if (isset($_REQUEST['artist'])){$intArtist = intval(($_REQUEST['artist']));}
// $intPage = '';if (isset($_REQUEST['page'])){$intPage = intval(($_REQUEST['page']));}
// $intLimit = '';if (isset($_REQUEST['limit'])){$intLimit = intval(($_REQUEST['limit']));}

// $intStar = '';if (isset($_REQUEST['star'])){$intStar = intval(($_REQUEST['star']));}
// $intPic = '';if (isset($_REQUEST['pic'])){$intPic = intval(($_REQUEST['pic']));}

// $strTypeName = '';if (isset($_REQUEST['typename'])){$strTypeName = str_replace("&","&amp;",($_REQUEST['typename']));}
// $strArtistName = '';if (isset($_REQUEST['artistname'])){$strArtistName = str_replace("&","&amp;",($_REQUEST['artistname']));}
// $strSort = '';if (isset($_REQUEST['sort'])){$strSort = str_replace("&","&amp;",($_REQUEST['sort']));}

// $strName = '';if (isset($_REQUEST['name'])){$strName = str_replace("&","&amp;",($_REQUEST['name']));}
// $strDesc = '';if (isset($_REQUEST['desc'])){$strDesc = str_replace("&","&amp;",($_REQUEST['desc']));}
// $strPrice = '';if (isset($_REQUEST['price'])){$strPrice = str_replace("&","&amp;",($_REQUEST['price']));}
// $strRef = '';if (isset($_REQUEST['ref'])){$strRef = str_replace("&","&amp;",($_REQUEST['ref']));}

?>