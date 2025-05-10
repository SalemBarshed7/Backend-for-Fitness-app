<?php

include "../conn.php";
include "../function.php";


$id        = filter_requst('id');

$imagename = filter_requst("image");


$statmnt = $con->prepare("DELETE FROM `catogry` WHERE id = ?");
$statmnt->execute(array($id));
$count = $statmnt->rowCount();

if ($count > 0){
    deletimage("../upload/" , $imagename);
    echo json_encode(array("status" => "sucssful"));
 
}else {
    echo json_encode(array("status" => "Faild"));
}












?>