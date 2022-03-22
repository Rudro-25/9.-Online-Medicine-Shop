<?php
  $conn = mysqli_connect("localhost", "root", "", "drug");
  if(isset($_POST["shop_submit"])) {
    $shop_name = $_POST["shop_name"];
    $shop_mobile = $_POST["shop_mobile"];
    $shop_address = $_POST["shop_address"];
    $sql = "INSERT INTO shop(shopName, shopMobile, shopAddress) VALUES('$shop_name', '$shop_mobile', '$shop_address');";
    mysqli_query($conn, $sql);
    header("Location: add-shop.php?result=success");
  } else {
    header("Location: add-shop.php");
  }
?>