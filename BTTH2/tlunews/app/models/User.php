<?php
require_once 'Database.php'; // Kết nối cơ sở dữ liệu

class User {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    public function getUserByUsername($username) {
        $stmt = $this->db->prepare("SELECT * FROM users WHERE username = :username LIMIT 1");
        $stmt->bindParam(':username', $username);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}

