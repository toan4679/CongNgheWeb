<?php
include_once 'controllers/ProductsController.php';

$controller = new ProductsController();

$action = isset($_GET['action']) ? $_GET['action'] : 'index';

switch ($action) {
    case 'index':
        $controller->index();
        break;
    case 'add':
        $controller->add();
        break;
    case 'edit':
        $controller->edit();
        break;
    case 'delete':
        $controller->delete();
        break;
    default:
        $controller->index();
        break;
}
