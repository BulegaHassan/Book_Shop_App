<?php
    // You may have to change the port to the default 3306
    $dsn = 'mysql:host=localhost;dbname=tech_books;port=3307';
    $username = 'prev_user';
    $password = 'pa55word';


    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('../errors/database_error.php');
        exit();
    }
?>