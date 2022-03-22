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
		<div class="new-container">
			<div class="select-container">
				<form action="select_company.inc.php" method="POST"  class="select_company">
					<?php
						$conn = mysqli_connect("localhost", "root", "", "drug");
						$sql = "SELECT * FROM company;";
						$result = mysqli_query($conn, $sql);
						echo '<select name="select_company_option">';
						if(!isset($_GET["companyId"])) {
							echo '<option value="0|Select a Company" selected>Select a Company</option>';
						} else {
							echo '<option value="0|Select a Company">Select a Company</option>';
						}
						while($row = mysqli_fetch_assoc($result)) {
							$compId = $row["compId"];
							$compName = $row["compName"];
							$store = $compId.'|'.$compName;
							if(isset($_GET["companyId"])) {
								$companyId = $_GET["companyId"];
								if($compId == $companyId) {
									echo '<option value="'.$store.'" selected>'.$compName.'</option>';
								} else {
									echo '<option value="'.$store.'">'.$compName.'</option>';
								}
							} else {
								echo '<option value="'.$store.'">'.$compName.'</option>';
							}
						}
						echo '</select>';
					?>
					<button name="select_company_btn">Select Company</button>
				</form>
				<form action="select_category.inc.php" method="POST" class="select_category">
					<?php
						if(isset($_GET["companyId"])) {
							$companyId = $_GET["companyId"];
							echo '<input style="display:none;" type="number" name="companyId" value="'.$companyId.'">';
						} if(isset($_GET["medicineId"])) {
							$medicineId = $_GET["medicineId"];
							echo '<input style="display:none" type="number" name="medicineId" value="'.$medicineId.'">';
						} if(isset($_GET["companyId"])) {
							$companyId = $_GET["companyId"];
							$sql = "SELECT * FROM category WHERE catId IN (SELECT catId FROM medicine WHERE compId = '$companyId');";
						} else {
							$sql = "SELECT * FROM category;";
						}
						$result = mysqli_query($conn, $sql);
						echo '<select name="select_category_option">';
						if(!isset($_GET["categoryId"])) {
							echo '<option value="0|Select a Category" selected>Select a Category</option>';
						} else {
							echo '<option value="0|Select a Category">Select a Category</option>';
						}
						while($row = mysqli_fetch_assoc($result)) {
							$catId = $row["catId"];
							$catName = $row["catName"];
							echo $catName;
							$store = $catId.'|'.$catName;
							if(isset($_GET["categoryId"])) {
								$categoryId = $_GET["categoryId"];
								if($catId == $categoryId) {
									echo '<option value="'.$store.'" selected>'.$catName.'</option>';
								} else {
									echo '<option value="'.$store.'">'.$catName.'</option>';
								}
							} else {
								echo '<option value="'.$store.'">'.$catName.'</option>';
							}
						}
						echo '</select>';
					?>
					<button name="select_category_btn">Select Category</button>
				</form>
				<form action="select_medicine.inc.php" method="POST" class="select_medicine">
					<?php
						if(isset($_GET["companyId"])) {
							$companyId = $_GET["companyId"];
							echo '<input style="display:none;" type="number" name="companyId" value="'.$companyId.'">';
						} if(isset($_GET["categoryId"])) {
							$categoryId = $_GET["categoryId"];
							echo '<input style="display:none" type="number" name="categoryId" value="'.$categoryId.'">';
						}
						if(isset($_GET["companyId"]) && isset($_GET["categoryId"])) {
							$companyId = $_GET["companyId"];
							$categoryId = $_GET["categoryId"];
							$sql = "SELECT medId, medName FROM medicine WHERE compId = '$companyId' AND catId = '$categoryId';";
						} else if(isset($_GET["companyId"])) {
							$companyId = $_GET["companyId"];
							$sql = "SELECT medId, medName FROM medicine WHERE compId = '$companyId';";
						} else if(isset($_GET["categoryId"])) {
							$categoryId = $_GET["categoryId"];
							$sql = "SELECT medId, medName FROM medicine WHERE catId = '$categoryId';";
						} else {
							$sql = "SELECT medId, medName FROM medicine;";
						}
						$result = mysqli_query($conn, $sql);
						echo '<select name="select_medicine_option">';
						if(!isset($_GET["medicineId"])) {
							echo '<option value="0|Select a Medicine" selected>Select a Medicine</option>';
						} else {
							echo '<option value="0|Select a Medicine">Select a Medicine</option>';
						}
						while($row = mysqli_fetch_assoc($result)) {
							$medId = $row["medId"];
							$medName = $row["medName"];
							$store = $medId.'|'.$medName;
							if(isset($_GET["medicineId"])) {
								$medicineId = $_GET["medicineId"];
								if($medId == $medicineId) {
									echo '<option value="'.$store.'" selected>'.$medName.'</option>';
								} else {
									echo '<option value="'.$store.'">'.$medName.'</option>';
								}
							} else {
								echo '<option value="'.$store.'">'.$medName.'</option>';
							}
						}
						echo '</select>';
					?>
					<button name="select_medicine_btn">Select Medicine</button>
				</form>
			</div>
			<div class="read-container">
				<?php
					if(isset($_GET["medicineId"])) {
						$medId = $_GET["medicineId"];
						$sql = "SELECT * FROM shop WHERE shop.shopId IN (SELECT medshop.shopId FROM medshop WHERE medshop.medId = '$medId');";
						$result = mysqli_query($conn, $sql);	
						while($row = mysqli_fetch_assoc($result)) {
							echo '<div class="each_shop">';
								echo '<p>'.$row["shopName"].'</p>';
								echo '<p>'.$row["shopMobile"].'</p>';
								echo '<p>'.$row["shopAddress"].'</p>';
							echo '</div>';
						}
					}
				?>
			</div>
		</div>	
	</header>
</body>
</html>













