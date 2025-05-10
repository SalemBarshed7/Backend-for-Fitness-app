<?php

include "../conn.php";
include "../function.php";


$name = filter_requst('name');
$email = filter_requst('email');
$password = filter_requst('password');



$statmnt = $con->prepare("
INSERT INTO `users`( `email`, `password`, `name`) 
VALUES (?,?,?)
");


$statmnt->execute(array($email , $password ,$name ));
$count = $statmnt->rowCount();

if ($count > 0){

    echo json_encode(array("status" => "sucssful"));
 
}else {
    echo json_encode(array("status" => "Faild"));
}












?>