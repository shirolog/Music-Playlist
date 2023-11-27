<?php 

try{
    $dbname = 'mysql:dbname=music_db;host=localhost';
    $user_name = 'root';
    $password = '';
    $conn = new PDO($dbname, $user_name, $password);
}catch(PDOException $e){
    echo 'Connection failed'. $e->getMessage();
}

?>