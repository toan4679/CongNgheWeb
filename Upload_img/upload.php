<?php
# Di chuyển tệp tải lên (từ thư mục tạm tới thư mục đích trên Server)
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
    echo "Tệp " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " đã được tải lên.<br>";

    // Hiển thị ảnh vừa tải lên
    echo "<img src='" . $target_file . "' alt='Uploaded Image' style='max-width: 300px; max-height: 300px;'><br>";
} else {
    echo "Xin lỗi, đã có lỗi xảy ra trong quá trình tải tệp tin của bạn.";
}
?>

