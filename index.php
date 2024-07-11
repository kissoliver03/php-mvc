<?php
require_once 'Controller/MainController.php';

$page = isset($_GET['page']) ? $_GET['page'] : 'index';
$controller = new MainController();

switch ($page) {
    case 'users':
        $controller->userList();
        break;
    case 'advertisements':
        $controller->advertisementList();
        break;
    default:
        $controller->index();
        break;
}
?>
