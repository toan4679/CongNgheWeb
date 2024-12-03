<?php

class Database {
    private static $connection = null;

    public static function getConnection() {
        if (self::$connection === null) {
            try {
                $host = 'localhost';
                $dbname = 'tintuc';
                $username = 'root'; 
                $password = '';  

                self::$connection = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
                self::$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 

                self::$connection->query("SELECT 1");

                echo "Kết nối cơ sở dữ liệu thành công!";
            } catch (PDOException $e) {
                die("Không thể kết nối đến cơ sở dữ liệu: " . $e->getMessage());
            }
        }
        
        return self::$connection;
    }
}
?>
