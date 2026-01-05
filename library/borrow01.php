<?php
include("connection.php");
$select_db = @mysqli_select_db($link,"library");
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    
    $UserID = $_GET["UserID"];
    $BookID = $_GET["BookID"];
    $BorrowedDate = $_GET["BorrowedDate"];
    $ReturnDate = $_GET["ReturnDate"];
	
    
    $updateBookStatus = "UPDATE books SET Status = 'Borrowed' WHERE BookID = '$BookID'";
    if (mysqli_query($link, $updateBookStatus)) {
        
        $getUserBookInfo = "SELECT users.UserName, books.Title 
                            FROM users 
                            INNER JOIN books ON users.UserID = '$UserID' AND books.BookID = '$BookID'";

        $result = mysqli_query($link, $getUserBookInfo);

        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $UserName = $row['UserName'];
            $Title = $row['Title'];

            
            $sql = "INSERT INTO records (UserID, UserName, BookID, Title, BorrowedDate, ReturnDate) 
                    VALUES ('$UserID', '$UserName', '$BookID', '$Title', '$BorrowedDate', '$ReturnDate')";

            if (mysqli_query($link, $sql)) {
                echo "登記成功。";
            } else {
                echo "上傳資料時發生錯誤";
            }
        } else {
            echo "未找到相關的借閱者或書籍。";
        }
    } else {
        echo "更新書籍狀態時發生錯誤";
    }
}
?>
