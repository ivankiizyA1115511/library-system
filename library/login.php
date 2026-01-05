<?php
$filename = $_GET["id"];
$filepasswd = $_GET["passwd"];
?>

<?php
	include("connection.php");

	$select_db = @mysqli_select_db($link,"library");
	if(!$select_db)
	{
		echo '<br>找不到資料庫！</br>';
	}
	else{
		echo 'Admin: '; echo $filename;
	}
?>

<body>
<center>
<p><br>
<table border=0 width=50%>
<p><br><font size=6 color=blue>圖書管理系統</font>
<tr>
<br>
<td><a href=search.php?cate=1>搜尋書籍</a>
<td><a href=borrow.php?cate=2>借書系統</a>
<td><a href=return.php?cate=3>還書系統</a>
<td><a href=user.php?cate=4>會員管理</a>

</table>
</body>