<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Leigh Gallery | Art Gallery in Hastings, East Sussex</title>
    <link href="../../includes/css/jk-02.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php
include '../../includes/php/top.php';
?>
		<div class="container login">
			<h1>Login</h1>
			<form name="form1" method="post" action="../login/">
				<p>
					<label for="name">Username</label>
					<input name="username" type="text" />
				</p>
				<p>
					<label for="tel">Password</label>
					<input name="password" type="password" />
				</p>
				<p>
					<label>&nbsp;</label>
					<input name="Submit" type="submit" value="Login" />
				</p>
			</form>
		</div>
		</div>
<?php
include '../../includes/php/footer.php';
?>
</body>
</html>
