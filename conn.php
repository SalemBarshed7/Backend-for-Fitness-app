<?php

// $dsn = "mysql:host=localhost;dbname=fitness_app";
// $user= "root";
// $pass= "";
// $option = array(
//     PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8"
// );




// try {
  
//     $con = new PDO($dsn, $user, $pass, $option);
//     $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


    

//     // header("Access-Control-Allow-Origin: *");
//     // header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With, Access-Control-Allow-Origin");
//     // header("Access-Control-Allow-Methods: POST, OPTIONS , GET , PUT, DELETE");
//     // include "function.php";
//     // checkAuthenticate();


// } catch (PDOException $e) {
//     echo "Connection failed: " . $e->getMessage();
//     exit;

// }




$host = "sql10.freesqldatabase.com";
$dbname = "sql10778083";
$user = "sql10778083";
$pass = "b4zx5KewLj";
$port = 3306;

$dsn = "mysql:host=$host;port=$port;dbname=$dbname;charset=utf8";

$options = array(
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
);

try {
    $con = new PDO($dsn, $user, $pass, $options);
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "✅ الاتصال بقاعدة البيانات ناجح";
} catch (PDOException $e) {
    echo "❌ فشل الاتصال بقاعدة البيانات: " . $e->getMessage();
    exit;
}











?>
