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
    <div class="add-medicine">
      <form action="add_medicine.inc.php" method="POST">
        <div><input name="med_name" type="text" placeholder="Medicine Name"></div>
        <div><input name="med_price" type="text" placeholder="Price"></div>
        <div>
          <?php
            $conn = mysqli_connect("localhost", "root", "", "drug");
            $sql =  "SELECT compId, compName FROM company;";
            $result = mysqli_query($conn, $sql);
            echo '<select name="compSelect">';
              echo '<option value="0|Select a Company">Select a Company</option>';
            while($row = mysqli_fetch_assoc($result)) {
              $x = $row["compId"]."|".$row["compName"];
              echo '<option value="'.$x.'">'.$row["compName"].'</option>';
            }
            echo '</select>';
          ?>
        </div>
        <div>
          <?php
            $conn = mysqli_connect("localhost", "root", "", "drug");
            $sql =  "SELECT catId, catName FROM category;";
            $result = mysqli_query($conn, $sql);
            echo '<select name="catSelect">';
              echo '<option value="0|Select a Category">Select a Category</option>';
            while($row = mysqli_fetch_assoc($result)) {
              $x = $row["catId"]."|".$row["catName"];
              echo '<option value="'.$x.'">'.$row["catName"].'</option>';
            }
            echo '</select>';
          ?>
        </div>
        
        <div><button name="med_submit">Submit</button></div>
      </form>
    </div>
	</header>
</body>
</html>