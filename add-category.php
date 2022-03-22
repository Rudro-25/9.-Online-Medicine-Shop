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
    <div class="add-category">
      <form action="add-category.inc.php" method="POST">
        <div><input name="cat_name" type="text" placeholder="Category Name"></div>
        <div><button name="cat_submit">Submit</button></div>
      </form>
    </div>
	</header>
</body>
</html>