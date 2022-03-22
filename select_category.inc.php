<?php
  $conn = mysqli_connect("localhost", "root", "", "drug");
  $cat = $_POST["select_category_option"];
  $cat_arr = explode("|", $cat);
  $catId = $cat_arr[0];
  $catName = $cat_arr[1];
  if(!$catId) {
    if(isset($_POST["companyId"])) {
      $companyId = $_POST["companyId"];
      header("Location: custom.php?companyId=$companyId");
    } else {
      header("Location: custom.php");
    }
  } else {
    if(isset($_POST["companyId"])) {
      $companyId = $_POST["companyId"];
      header("Location: custom.php?companyId=$companyId&categoryId=$catId");
    } else {
      header("Location: custom.php?categoryId=$catId");
    }
  }
?>