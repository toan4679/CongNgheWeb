<?php
include_once 'models/ProductModel.php';

class ProductsController {
    private $model;

    public function __construct() {
        $this->model = new ProductModel();
    }

    public function index() {
        $products = $this->model->getAllProducts();
        include 'views/products/index.php';
    }

    public function add() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $imagePath = '';
            if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
                $target_dir = "img/";
                $target_file = $target_dir . basename($_FILES["image"]["name"]);
                if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                    $imagePath = $target_file;
                }
            }
            $this->model->addProduct($_POST['name'], $_POST['price'], $imagePath);
        }
        header('Location: index.php');
    }

    public function edit() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = $_POST['id'];
            $imagePath = $_POST['current_image'];
            if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
                $target_dir = "img/";
                $target_file = $target_dir . basename($_FILES["image"]["name"]);
                if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                    $imagePath = $target_file;
                }
            }
            $this->model->editProduct($id, $_POST['name'], $_POST['price'], $imagePath);
        }
        header('Location: index.php');
    }

    public function delete() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $this->model->deleteProduct($_POST['id']);
        }
        header('Location: index.php');
    }
}
