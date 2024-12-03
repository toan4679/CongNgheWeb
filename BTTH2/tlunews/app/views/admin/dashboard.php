<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: /admin/login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang quản trị</title>
</head>
<body>
    <h1>Chào mừng, <?php echo $_SESSION['admin']['username']; ?></h1>
    <a href="logout.php">Đăng xuất</a>
</body>
</html>
