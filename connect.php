<?php
$name=$_POST['name'];
$location=$_POST['location'];
$shop=$_POST['shop'];
$contact_no=$_POST['contact_no'];


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
if(empty($name)){
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
}

$sql="INSERT INTO Drug_List (Name,Location,Shop,contact_no) 
VALUES('$name','$location','$shop','$contact_no');";
if($conn->query($sql)==TRUE){
	echo "<br><br><h3><center>Thank you!</center>";
	echo "<br><br><center>Record added successfully!</h3></center>";
	header('Location: admin2.php'); 
}
else{
	die("Error ".$conn->error);
}
$conn->close();
?>