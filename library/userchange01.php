<?php
include("connection.php");
$UserID = $_GET["UserID"];
$UserName = $_GET["UserName"];
$Gender = $_GET["Gender"];
$Email = $_GET["Email"];
$PhoneNumber = $_GET["PhoneNumber"];

$select_db = @mysqli_select_db($link,"library");
$sql = "UPDATE users SET UserName = '".$UserName."', Gender = '".$Gender."', Email = '".$Email."', PhoneNumber = '".$PhoneNumber."' WHERE UserID = '".$UserID."' ";

if (mysqli_query($link, $sql)) {
    echo "資料已成功更新。";
}else{
	echo "資料更新失敗。";
}
?>
