<?php

include "../conn.php";
include "../function.php";



$email = filter_requst('email');
$password = filter_requst('password');



$statmnt = $con->prepare("SELECT * FROM `users` 
WHERE email = ? AND `password` = ?");


$statmnt->execute(array($email , $password));

$data = $statmnt->fetch(PDO::FETCH_ASSOC);
$count = $statmnt->rowCount();

if ($count > 0){

    echo json_encode(array("status" => "sucssful" ,"data" => $data));
 
}else {
    echo json_encode(array("status" => "Faild"));
}












?>