<?php
  $conn = mysqli_connect("localhost", "root", "", "drug");
  $comp = $_POST["select_company_option"];
  $comp_arr = explode("|", $comp);
  $compId = $comp_arr[0];
  $compName = $comp_arr[1];
  if(!$compId) {
    header("Location: custom.php");
  } else {
    header("Location: custom.php?companyId=$compId");
  }
?>