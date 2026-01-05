<?php
include("connection.php");
$select_db = @mysqli_select_db($link,"library");

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    
    $UserID = $_GET["UserID"] ?? '';
    $BookID = $_GET["BookID"] ?? '';

    
    $deleteRecordQuery = "DELETE FROM records WHERE UserID = '$UserID' AND BookID = '$BookID'";
    $resultDeleteRecord = mysqli_query($link, $deleteRecordQuery);

    
    $updateBookStatusQuery = "UPDATE books SET Status = 'Available' WHERE BookID = '$BookID'";
    $resultUpdateBookStatus = mysqli_query($link, $updateBookStatusQuery);

    if ($resultDeleteRecord && $resultUpdateBookStatus) {
        echo "還書成功！";
    } else {
        echo "還書時發生錯誤";
    }
}
?>
