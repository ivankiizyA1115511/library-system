<?php
$UserID = $_GET["UserID"] ?? '';
$BorrowedDate = $_GET["BorrowedDate"] ?? '';
$ReturnDate = $_GET["ReturnDate"] ?? '';
?>

<body>
<form method="get" action="borrow01.php">
<p align="center"><font size="6" face="標楷體" color=blue>借書登記</font></p>
<hr>
<TT>
<center>
<table border="0" width="30%">
<tr>
<td align="right">會員ID: </td>
<td align="left"><input type=text maxLength="10" size="10"
name="UserID" value="<?php echo $UserID; ?>"></td>
<tr>
<td align="right">圖書ID: </td>
<td align="left"><input type=text maxLength="10" size="10"
name="BookID"></td>
<tr>
<td align="right" width=20%>借書日期: </td>
<td align="left">
<input maxLength="15" size="15" name="BorrowedDate" type="text" value="<?php echo $BorrowedDate; ?>">
<tr>
<td align="right" width=20%>還書日期: </td>
<td align="left">
<input maxLength="15" size="15" name="ReturnDate" type="text" value="<?php echo $ReturnDate; ?>">
</table>
<p align="center">
<input value=" 記錄 " type="submit">
<input value=" 清除 " type="reset" > 　
</form>
</body>
