<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Homepage design with html abd css</title>
	<link rel="stylesheet" href="style6.css">
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

  <center><h2><br><br><br><br><br><br><br>ADMIN LOGIN </h2></br>

  <form action="login_action.php" method="post">
		<table align="center">

			<tr>

			  <td>
			   <h3>User Name</h3>
				<input type="text" name="user_name" placeholder="User Name"/>
			  </td>
			</tr>
			
			<tr>
			  <td>
			  	<h3>Password</h3>
				<input type="password" name="password" placeholder="Password"/>
			  </td>
			</tr>
			
		    <tr>
			  <td>
				<input type="submit" name="submit" value="LOGIN"/>
			  </td>
			</tr>
		</table>
		</form>
	</center>

	</header>



     

</body>


</html>