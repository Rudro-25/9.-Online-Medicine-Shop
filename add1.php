<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Homepage design with html abd css</title>
	<link rel="stylesheet" href="style1.css">
</head>
<body>
	<header>
		<div class="wrapper">
			<ul class="nav-area">
				<li><a href="http://localhost/dbms/home.html">Home</a></li>
				<li><a href="http://localhost/dbms/about.php">About</a></li>
				<li><a href="http://localhost/dbms/admin.php">Admin</a></li>
				<li><a href="http://localhost/dbms/custom.php">Customers</a></li>
				<li><a href="http://localhost/dbms/news.php">News</a></li>
			</ul>
		</div>

<center><h2><br><br><br><br>ADD DRUG...</h2></center><br><br>
<center>Give all details Which drug you want to add.</center><br><br>
<form action="connect.php" method="POST">
<center>Name: <input type="text" name="name"><br><br></center>
<center>Location: <input type="text" name="location"><br><br></center>
<center>Shop: <input type="varchar" name="shop"><br><br></center>
<center>Contact_No: <input type="varchar" name="contact_no"><br><br></center>
<center><input type="submit" name="submit"></center>
</form>

	</header>
</body>
</html>