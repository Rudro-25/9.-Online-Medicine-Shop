<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
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
		<div class="show-medshops">
			<div>
				<div>Available in</div>
        <?php
          $medId = $_GET["medId"];
					$conn =  mysqli_connect("localhost", "root", "", "drug");
					$sql = "SELECT shop.shopName AS shopName, shop.shopMobile AS shopMobile, shop.shopAddress AS shopAddress FROM shop INNER JOIN medshop ON medshop.medId = '$medId' AND shop.shopId = medshop.shopId;";
					$result = mysqli_query($conn, $sql);
					while($row = mysqli_fetch_assoc($result)) {
            echo '<div class="shop">';
              echo '<p>'.$row["shopName"].'</p>';
              echo '<p>'.$row["shopMobile"].'</p>';
              echo '<p>'.$row["shopAddress"].'</p>';
            echo '</div>';
					}
				?>
			</div>
		</div>
		
	</header>

   

</body>
</html>