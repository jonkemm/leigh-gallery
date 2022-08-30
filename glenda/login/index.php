<?php
setlocale(LC_MONETARY, 'en_UK');

ini_set('display_errors','off');ini_set('display_errors','off');

	$DBH = new PDO('mysql:host=213.171.200.74;dbname=leighga_penfold;charset=utf8', 'leighga_dba', 'ZuluZebra25!');

$DBH->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$username = isset($_POST['username']) ? trim(strip_tags($_POST['username'])) : null;
$password = isset($_POST['password']) ? trim(strip_tags($_POST['password'])) : null;

$SQL = "SELECT otheruser_user,otheruser_pass,otheruser_password_salt,otheruser_id FROM otheruser WHERE otheruser_user = :username AND otheruser_pass = :password;";

$STH = $DBH->prepare($SQL);
$STH->bindParam(':username', $username);
$STH->bindParam(':password', $password);
$STH->execute();
$row = $STH->fetch();
if ($STH->rowCount() > 0) {
	session_start();
	$_SESSION['user'] = 'aye';
	$missing = 'Login succeeded';
	$_SESSION['missing'] = $missing;
	header('Location: ../?missing='.$missing);
}
else
{
	$missing = 'Login failed';
	header('Location: ../../');
}

?>