<!DOCTYPE html>


<?php

//$dname=$_POST['dname'];




$server="localhost";
$user="root";
$pass="";
$db="drug";

$conn=new mysqli($server,$user,$pass,$db);
if($conn->connect_error){
	die("Error ".$conn->connect_error);
}
else{
	
}

$dname=$_POST['dname'];
$quantity=$_POST['quantity'];
//$quantity=$_POST['quantity'];
$sql ="SELECT quantity  FROM tarin_pharmacy where dname='".$dname."'";
$result = $conn->query($sql);
//echo $result['dname'];


if($result->num_rows>0)
{
	while($row=$result->fetch_assoc())
	{
		$quantity2=$row['quantity'];
		//echo "".$row['quantity']."";
	}
}


//echo $quantity2;
//echo $quantity;
if($quantity<=$quantity2)
{

}
else
{
	
}
   /* if($conn->query($sql)==TRUE){
	echo "<br><br><h3><center>Thank you!</center>";
	echo "<br><br><center>Record added successfully!</h3></center>";
	header('Location: admin2.php'); 
}*/

//header("Location: tarin2.php");

?>


</html>