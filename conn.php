<?php
$db="drug";
    $dbhost="localhost";
    $pass="";
    //$q=$_POST['q'];
    $user="root";
    $conn= mysqli_connect($dbhost,$user,$pass,$db);
    if($conn){
  //echo "Connected";	
      }
   else{
	echo "Database Not  Connected";
        }


?>