<?php
session_start();
?>


<?php
$_SESSION['x']=$_GET['x'];
//echo $_GET["x"];
$x=$_SESSION['x'];
echo '<center><form action="/dbms/order.php?x='.$x.'" method="POST">Quantity:<br><input type="number" name="quantity"/><input type="submit" name="order" value="Submit"/></form></center>';
if (isset($_POST['order'])){
	echo '<center>You Have Selected: '.$_POST['quantity']. ' Items</center>';
include "conn.php";
$sql="SELECT * FROM drug_list WHERE Shop LIKE '%$x%'";
$result=$conn->query($sql);
echo "<center>";
while($row=mysqli_fetch_assoc($result)){
	echo $row['Shop']."    ".$row['Contact_no']."<br>";
	
}
echo "</center>";

}


?>
