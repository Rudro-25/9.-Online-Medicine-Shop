<?php
  $conn = mysqli_connect("localhost", "root", "", "drug");
  if(isset($_POST["comp_submit"])) {
    $comp_name = $_POST["comp_name"];
    $comp_mobile = $_POST["comp_mobile"];
    $comp_address = $_POST["comp_address"];
    $sql = "INSERT INTO company(compName, compMobile, compAddress) VALUES('$comp_name', '$comp_mobile', '$comp_address');";
    mysqli_query($conn, $sql);
    header("Location: add-company.php?result=success");
  } else {
    header("Location: add-company.php");
  }
?>