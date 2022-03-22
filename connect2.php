<?php

//$dname=$_POST['dname'];
$quantity=$_POST['quantity'];



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
/*if(empty($name)){
	die("<center><h4><br><br>Wrong !!! Please enter the informations correctly.</h4></center>");
}
if(empty($location)){
	die("<center><h4><br><br>Wrong !!! Please enter the informations correctly.</h4></center>");
}
if(empty($shop)){
	die("<center><h4><br><br>Wrong !!! Please enter the informations correctly.</h4></center>");
}
if(empty($contact_no)){
	die("<center><h4><br><br>Wrong !!! Please enter the informations correctly.</h4></center>");
} */

$sql = "SELECT quantity FROM rudro_pharmacy where dname='$napa';";
$result = $conn->query($sql);
echo

if($result > $quantity)
{
	echo"ok";

}


   /* if($conn->query($sql)==TRUE){
	echo "<br><br><h3><center>Thank you!</center>";
	echo "<br><br><center>Record added successfully!</h3></center>";
	header('Location: admin2.php'); 
}*/
else{
	die("Error ".$conn->error);
}
$conn->close();
?>


