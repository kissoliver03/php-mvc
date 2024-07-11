<?php
require_once 'Model/Advertisement.php';
require_once 'Database/database.php';


class AdvertisementService {
    public function getAllAdvertisements() {
        $db = Database::getInstance();
        $query = $db->query("SELECT title, users.name AS user_name FROM advertisements LEFT JOIN users ON advertisements.user_id = users.id ORDER BY advertisements.id ASC");
        $advertisements = [];

        while ($row = $query->fetch_assoc()) {
            $advertisements[] = new Advertisement($row['title'], $row['user_name']);
        }

        return $advertisements;
    }
}
?>
