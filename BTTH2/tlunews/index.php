<?php
require_once 'app/controllers/AdminController.php';

// Khởi tạo controller AdminController
$controller = new AdminController();

// Kiểm tra đường dẫn và gọi phương thức tương ứng
if ($_SERVER['REQUEST_URI'] == '/admin/login.php' && $_SERVER['REQUEST_METHOD'] == 'GET') {
    // Hiển thị form đăng nhập
    $controller->login();
} elseif ($_SERVER['REQUEST_URI'] == '/admin/login.php' && $_SERVER['REQUEST_METHOD'] == 'POST') {
    // Xử lý form đăng nhập khi người dùng submit
    $controller->loginSubmit();
} elseif ($_SERVER['REQUEST_URI'] == '/admin/dashboard.php' && isset($_SESSION['admin'])) {
    // Nếu người dùng đã đăng nhập và có session admin
    include 'app/views/admin/dashboard.php';
} elseif ($_SERVER['REQUEST_URI'] == '/home.php' && isset($_SESSION['user'])) {
    // Nếu người dùng là người dùng thông thường, chuyển đến trang home
    include 'app/views/home/index.php';
} elseif (isset($_GET['logout']) && $_GET['logout'] == 'true') {
    // Xử lý đăng xuất và chuyển về trang login
    $controller->logout();
} else {
    // Nếu không tìm thấy đường dẫn hợp lệ, quay về trang login
    header("Location: /admin/login.php");
    exit();
}
