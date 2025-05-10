<?php

include "../conn.php";
include "../function.php";

$catogry_id     = filter_requst('id');
$name           = filter_requst('name');
$image          = filter_requst('image');


if(isset($_FILES['image'])){
    deletimage("../upload/" , $image);
    $image = uploadimage('image');
}


$statmnt = $con->prepare("UPDATE `catogry` SET 
`name`= ? , `image` = ? WHERE id = ?");
$statmnt->execute(array($name , $image, $catogry_id )); // Added $catogry_id back to the execute method
$count = $statmnt->rowCount();

if ($count > 0){
    echo json_encode(array('status' => 'sucssful'));
}else {
    echo json_encode(array('status' => 'Faild'));
}












?>