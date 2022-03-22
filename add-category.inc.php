<?php
  $conn = mysqli_connect("localhost", "root", "", "drug");
  if(isset($_POST["cat_submit"])) {
    $cat_name = $_POST["cat_name"];
    $sql = "INSERT INTO category(catName) VALUES('$cat_name');";
    mysqli_query($conn, $sql);
    header("Location: add-category.php?result=success");
  } else {
    header("Location: add-category.php");
  }
?>