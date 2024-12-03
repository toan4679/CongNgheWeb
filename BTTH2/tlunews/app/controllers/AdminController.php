<?php
session_start();
require_once 'app/models/User.php';

class AdminController {

    // Hiển thị trang đăng nhập
    public function login() {
        if (isset($_SESSION['admin']) || isset($_SESSION['user'])) {
            // Nếu đã đăng nhập, chuyển hướng về trang dashboard hoặc home
            header("Location: /admin/dashboard.php");
            exit();
        }
        include 'app/views/admin/login.php';
    }

    // Xử lý đăng nhập
    public function loginSubmit() {
        if (isset($_POST['username']) && isset($_POST['password'])) {
            $username = $_POST['username'];
            $password = $_POST['password'];

            $userModel = new User();
            $user = $userModel->getUserByUsername($username);

            if ($user && password_verify($password, $user['password'])) {
                // Đăng nhập thành công, kiểm tra role
                if ($user['role'] == 1) {
                    // Quản trị viên, chuyển đến dashboard
                    $_SESSION['admin'] = $user;
                    header("Location: /admin/dashboard.php");
                    exit();
                } elseif ($user['role'] == 0) {
                    // Người dùng thông thường, chuyển đến trang home
                    $_SESSION['user'] = $user;
                    header("Location: /home.php");
                    exit();
                }
            } else {
                // Nếu đăng nhập sai, hiển thị thông báo lỗi
                $error = "Tên đăng nhập hoặc mật khẩu không đúng.";
                include 'app/views/admin/login.php';
            }
        }
    }

    // Đăng xuất
    public function logout() {
        session_unset();
        session_destroy();
        header("Location: /admin/login.php");
        exit();
    }
}
