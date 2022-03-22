<link rel="stylesheet" type="text/css" href="style3.css"/>
<?php
$server="localhost";
$user="root";
$pass="";
$db="drug";
$n=1;

$conn=new mysqli($server,$user,$pass,$db);
if($conn->connect_error){
	die("Error ".$conn->connect_error);
}
else{
	
}
$sql = "SELECT ID,Name,Location,Shop,contact_no FROM drug_list;";
$result = $conn->query($sql);
if($result->num_rows>0){
	echo "<center><h3><br><br>DRUG LIST</h3></center>";
	echo "<center><h3>--*----*----*---*--</h3></center>";
	while($row=$result->fetch_assoc()){
		
		echo '<center><h3>'.$n.'. ' . $row['Name'] . '</h3><p>' .$row['Location'] . '<br />' . $row['Shop'] . '<br/>' .$row['contact_no'] . '</p><br /></center>'; 
		$n++;
	}
}
else{
	echo "<center><h3><br><br>Sorry! No result found.</h3></center>";
}
$conn->close();
?>