<?php

include "../conn.php";
include "../function.php";


$name = filter_requst('name');

$imagename = uploadimage('image');

if ($imagename != 'Faild'){

        

$statmnt = $con->prepare("INSERT INTO `catogry`(`name` , `image` ) VALUES (? , ?)");
$statmnt->execute(array($name  , $imagename));
$count = $statmnt->rowCount();

if ($count > 0){

    echo json_encode(array("status" => "sucssful"));
 
}else {
    echo json_encode(array("status" => "Faild"));
}
}
else{
    echo json_encode(array("status" => "Faild"));
}















?>