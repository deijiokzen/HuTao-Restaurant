<?php 
    //Start Session
    session_start();


    define('SITEURL', 'http://localhost:4967/HuTaoRestaurant/');
    define('LOCALHOST', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'restaurant');
    
    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error(LOCALHOST)); 
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error($conn)); 


?>