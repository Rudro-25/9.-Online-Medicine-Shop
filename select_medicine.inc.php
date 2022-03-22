<?php
  $conn = mysqli_connect("localhost", "root", "", "drug");
  $med = $_POST["select_medicine_option"];
  $med_arr = explode("|", $med);
  $medId = $med_arr[0];
  $medName = $med_arr[1];
  if(!$medId) {
    if(isset($_POST["companyId"])  && (isset($_POST["categoryId"]))) {
      $companyId = $_POST["companyId"];
      $categoryId = $_POST["categoryId"];
      header("Location: custom.php?categoryId=$categoryId&companyId=$companyId");
    } else if(isset($_POST["companyId"])) {
      $companyId = $_POST["companyId"];
      header("Location: custom.php?companyId=$companyId");
    } else if(isset($_POST["categoryId"])) {
      $categoryId = $_POST["categoryId"];
      header("Location: custom.php?categoryId=$categoryId");
    } else {
      header("Location: custom.php");
    }
  } else {
    if(isset($_POST["companyId"])  && (isset($_POST["categoryId"]))) {
      $companyId = $_POST["companyId"];
      $categoryId = $_POST["categoryId"];
      header("Location: custom.php?medicineId=$medId&categoryId=$categoryId&companyId=$companyId");
    } else if(isset($_POST["companyId"])) {
      $companyId = $_POST["companyId"];
      header("Location: custom.php?medicineId=$medId&companyId=$companyId");
    } else if(isset($_POST["categoryId"])) {
      $categoryId = $_POST["categoryId"];
      header("Location: custom.php?medicineId=$medId&categoryId=$categoryId");
    } else {
      header("Location: custom.php?medicineId=$medId");
    }
  }
?>