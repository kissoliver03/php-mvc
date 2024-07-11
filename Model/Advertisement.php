<?php
class Advertisement {
    public $title;
    public $user_name;

    public function __construct($title, $user_name) {
        $this->title = $title;
        $this->user_name = $user_name;
    }
}
?>