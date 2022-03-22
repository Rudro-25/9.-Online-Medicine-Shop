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
		<div class="show-medicines">
			<div>
				<div>All Medicines</div>
        <?php
          $compId = $_GET["compId"];
          $catId = $_GET["catId"];
					$conn =  mysqli_connect("localhost", "root", "", "drug");
					$sql = "SELECT * FROM medicine WHERE compId = '$compId' AND catId = '$catId';";
					$result = mysqli_query($conn, $sql);
					while($row = mysqli_fetch_assoc($result)) {
						echo '<a href="medshop.php?medId='.$row["medId"].'">'.$row["medName"].'</a>';
					}
				?>
			</div>
		</div>
		
	</header>

   

</body>
</html>