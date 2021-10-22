<?php
include("config.php");

$vehicle_id = $_GET['vehicle_id'];

$sql = "DELETE FROM `blood_cars` WHERE bd_id = $vehicle_id";

$res = mysqli_query($conn, $sql);

if ($res) {
    $_SESSION['noti'] = "Đã xóa";
    header("location:" . $siteurl . 'index.php');
} else {
    $_SESSION['noti'] = "Lỗi khi xóa";
    header("location:" . $siteurl . 'error.php');
}
?>