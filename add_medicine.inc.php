<?php
  $conn = mysqli_connect("localhost", "root", "", "drug");
  if(isset($_POST["med_submit"])) {
    $medName = $_POST["med_name"];
    $medPrice = $_POST["med_price"];
    $comp = explode("|", $_POST["compSelect"]);
    $compId = $comp[0];
    $cat = explode("|", $_POST["catSelect"]);
    $catId = $cat[0];
    //$shop = explode("|", $_POST["shopSelect"]);
    //$shopId = $shop[0];
    $sql = "INSERT INTO medicine(medName, medPrice, compId, catId) VALUES('$medName', '$medPrice', '$compId', '$catId');";
    mysqli_query($conn, $sql);
    $sql = "SELECT medId FROM medicine ORDER BY medId DESC LIMIT 1;";
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_assoc($result)) {
      $medId = $row["medId"];
      break;
    }
    $sql = "INSERT INTO medshop(medId, shopId) VALUES('$medId', '$shopId');";
    mysqli_query($conn, $sql);
    header("Location: add-medicine.php?result=success");
  } else {
    header("Location: add-medicine.php");
  }
?>