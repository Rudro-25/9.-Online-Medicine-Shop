<?php
  $conn = mysqli_connect("localhost", "root", "", "drug");
  if(!$conn){
	  echo ("Error Connection:".mysqli_connect_error());
  }
  if(isset($_POST['submit'])){
	  $user_name = $_POST['user_name'];
	  $password = $_POST['password'];
	  
   $sql = "select * from user_registration where user_name= '$user_name' and password = '$password'";
   $result = mysqli_query($conn,$sql);
   $count = mysqli_num_rows($result);
   
   if($count ==1){
	   echo "Login Success";
     header('Location: admin1.php'); //Send browser to http://www.google.com
   }
   else{
	   echo "login failed";
     header('Location: sad.jpg');
   }
    


  }

?>