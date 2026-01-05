<?php
$UserID = $_GET["UserID"];
echo $UserID;
?>

<?php
include("connection.php");

$select_db = @mysqli_select_db($link,"library");
if(!$select_db) {
    echo '<br>找不到資料庫！</br>';
} else {
    echo '<p align="center"><font size="4" face="標楷體" color=blue>會員記錄</font></p>';
    $sql_query = "SELECT * FROM records WHERE UserID = '".$UserID."' ";
    $result = mysqli_query($link, $sql_query);
    
    echo '<center><table width=100% border=0>';
    echo '<tr>';
    
    while($row = mysqli_fetch_array($result)) {
        echo '<tr>';
        echo '會員ID： '.$row['UserID'].'<br>';
        echo '會員姓名： '.$row['UserName'].'<br>';
        echo '圖書編號： '.$row['BookID'].'<br>';
        echo '書名： '.$row['Title'].'<br>';
        echo '借出日期： '.$row['BorrowedDate'].'<br>';
        echo '歸還日期： '.$row['ReturnDate'].'<br>';
        echo '</tr>';
    }
    echo '</table></center>';
}
?>
