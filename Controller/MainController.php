<?php
require_once 'Service/UserService.php';
require_once 'Service/AdvertisementService.php';

class MainController {
    private $userService;
    private $advertisementService;

    public function __construct() {
        $this->userService = new UserService();
        $this->advertisementService = new AdvertisementService();
    }

    public function index() {
        include 'view/index.php';
    }

    public function userList() {
        $users = $this->userService->getAllUsers();
        include 'view/users.php';
    }

     public function advertisementList() {
         $advertisements = $this->advertisementService->getAllAdvertisements();
         include 'view/advertisements.php';
     }
}
?>