<?php

use Soap\Url;

include "conn.php";
include "function.php";

// $stmt = $con->prepare("SELECT * FROM users where email = 'admin@admin.com'");
// $stmt->execute();
// $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

// $count = $stmt->rowCount();

// print_r($users);

//insert 
$add2 = $con->prepare("INSERT INTO `users`( `email`, `password`, `name`, `age`, `higth`, `width`, `Role_id`) VALUES ('saeed@gmai.com','saeed','help',10,100,50,3)");
// $add2->execute();

//update
$st22 = $con->prepare("UPDATE `users` SET  password ='salem' , name = 'salem' , age = 35 , higth = 170 , width = 65 WHERE id = 4");
// $st22->execute();
// $esers = $st22->fetchAll(PDO::FETCH_ASSOC);

$del = $con->prepare("DELETE FROM `users` WHERE id = 7 ");
$del->execute();
// $counts = $st22->rowCount();
$counts = $del->rowCount();
if ($counts > 0){
    echo "sucssful";
}else {
    echo "faild";
}


// echo json_encode($esers);

// echo "<br/>";
// echo $count;
// echo "<br/>";




?>



























<!-- 
//     $price = 20000;
//     // if ($price > 10000){
//     // echo '$price max of 10000';
//     // } else {
//     // echo 'price avverge 10000';
//     // }


// //  echo "================================================";

// // echo "<br/>";// سطر جديد 



//     function getname ($name){
//         echo "hello $name";
//         echo "<br/>";
//         global $price;
//         echo "<br/>";
//         echo "$price";
//         echo "<br/>";

//     }

//     getname("salem");
//     getname("mohmed");
//     getname("ali");
//     getname("abdullah");







//     echo "<br/>";
//     echo "<br/>";
//     echo "<br/>";

//     $names_array = array("salem" , "ali" , "mohmed" , "basel");

//     echo $names_array[ 2 ];




    // $names = $_GET['names'];
    // $age = $_GET['age'];
    // $dep = $_GET['dep'];

    // echo $names ;
    // echo "<br/>";
    // echo $age ; 
    // echo "<br/>";  
    // echo $dep ;
    // echo "<br/>";

 






    // $password = $_POST['password'];
        
    // echo "<br/>";
    // echo $password;
    // echo "<br/>";



    // print_r($_POST); -->
