<?php
$Title = $_GET["Title"];
?>

<?php
include("connection.php");

$select_db = @mysqli_select_db($link,"library");
if(!$select_db) {
    echo '<br>找不到資料庫！</br>';
} else {
    echo '<p align="center"><font size="4" face="標楷體" color=blue>書籍資料</font></p>';
    $sql_query = "SELECT books.BookID, books.Title, books.Author, books.PubID, books.Status, publishers.PubName 
                    FROM books 
                    INNER JOIN publishers ON books.PubID = publishers.PubID 
                    WHERE books.Title = '".$Title."'";
    $result = mysqli_query($link, $sql_query);
    
    echo '<center><table width=100% border=0>';
    echo '<tr>';
    
    while($row = mysqli_fetch_array($result)) {
        echo '<tr>';
        echo '圖書編號： '.$row['BookID'].'<br>';
        echo '書名： '.$row['Title'].'<br>';
        echo '作者： '.$row['Author'].'<br>';
        echo '出版社： '.$row['PubName'].'<br>';
        echo '狀況： '.$row['Status'].'<br>';
        echo '</tr>';
    }
    echo '</table></center>';
}
?>
