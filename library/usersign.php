<?php
	include("connection.php");
	$UserID = $_GET["UserID"];
	$UserName = $_GET["UserName"];
	$Gender=$_GET["Gender"];
	$Email=$_GET["Email"];
	$PhoneNumber=$_GET["PhoneNumber"];
	
	$select_db = @mysqli_select_db($link, "library");
	
	$sql_query = "INSERT INTO users VALUES('".$UserID."', '".$UserName."', '".$Gender."', '".$Email."', '".$PhoneNumber."')";
	mysqli_query($link, $sql_query);

	echo '註冊完成';
?>