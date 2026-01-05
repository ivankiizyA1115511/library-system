<?php
include("connection.php");
$UserID = $_GET["UserID"];

$select_db = @mysqli_select_db($link, "library");
$sql = "SELECT * FROM users WHERE UserID = '".$UserID."' ";
$result = mysqli_query($link, $sql);

if(mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $UserName = $row['UserName'];
    $Gender = $row['Gender'];
    $Email = $row['Email'];
    $PhoneNumber = $row['PhoneNumber'];
} else {
    echo "找不到對應的用戶資料。";
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>會員修改</title>
</head>
<body>
    <form method="get" action="userchange01.php">
        <p align="center"><font size="6" face="標楷體" color=blue>會員修改</font></p>
        <hr>
        <TT>
        <center>
        <table border="0" width="30%">
            <tr>
                <td align="right">會員ID: </td>
                <td align="left"><input type="text" maxLength="10" size="10" name="UserID" value="<?php echo $UserID; ?>"></td>
            </tr>
            <tr>
                <td align="right">姓名: </td>
                <td align="left"><input type="text" maxLength="10" size="10" name="UserName" value="<?php echo $UserName; ?>"></td>
            </tr>
            <tr>
                <td align="right">性別:</td>
                <td align="left"><input type="text" maxLength="10" size="10" name="Gender" value="<?php echo $Gender; ?>"></td>
            </tr>
            <tr>
                <td align="right">E-mail: </td>
                <td align="left"><input type="text" size="20" name="Email" value="<?php echo $Email; ?>"></td>
            </tr>
            <tr>
                <td align="right" width=20%>電話:</td>
                <td align="left"><input maxLength="15" size="15" name="PhoneNumber" type="text" value="<?php echo $PhoneNumber; ?>"></td>
            </tr>
        </table>
        <p align="center">
            <input value="修改" type="submit">
            <input value="清除" type="reset">
        </p>
    </form>
</body>
</html>
