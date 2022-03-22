<?php
$id=$_POST['id'];


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
if(empty($id)){
	die("<center><h4><br><br>Please head back & enter the informations correctly.</h4></center>");
}


$sql="DELETE FROM Drug_List WHERE ID='$id';";
if($conn->query($sql)==TRUE){
	echo "<br><br><center>Thank you!</center>";
	echo "<br><br><center>Record deleted successfully!</center>";
	header('Location: delete2.php');
}
else{
	die("Error ".$conn->error);
}
$conn->close();
?>
