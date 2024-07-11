<?php
require_once 'Model/User.php';
require_once 'Database/database.php';

class UserService {
    public function getAllUsers() {
        $db = Database::getInstance();
        $query = $db->query("SELECT * FROM users");
        $users = [];

        while ($row = $query->fetch_assoc()) {
            $users[] = new User($row['id'], $row['name']);
        }

        return $users;
    }
}
?>
