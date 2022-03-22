<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
</head>
<link rel="stylesheet" href="style1.css">
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
    <div class="add-shop">
      <form action="add-shop.inc.php" method="POST">
        <div><input name="shop_name" type="text" placeholder="Shop Name"></div>
        <div><input name="shop_mobile" type="text" placeholder="Mobile"></div>
        <div><input name="shop_address" type="text" placeholder="Address"></div>
        <div><button name="shop_submit">Submit</button></div>
      </form>
    </div>
	</header>
</body>
</html>