<?php

// header('Content-Type: application/json; charset=utf-8');
include "../conn.php";


$statmnt = $con->prepare("SELECT `id`,`name` , `image` FROM `catogry`");

$statmnt->execute();

$catogry = $statmnt->fetchAll(PDO::FETCH_ASSOC);

$count = $statmnt->rowCount();

if ($count > 0){
    echo json_encode(array("status" => "sucssful" ,"catogry" => $catogry));  
 
}else {
    echo json_encode(array("status" => "Faild"));
}























?>