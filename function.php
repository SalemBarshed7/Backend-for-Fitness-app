<?php

define('MB' , 1048576);

function filter_requst($requstname){

    return htmlspecialchars(strip_tags($_POST[$requstname]));

}



function uploadimage($imagerequst){
    global $errormasage ;
    $imageName              = rand(100 , 100000) . $_FILES[$imagerequst]['name'];
    $imagetmp               = $_FILES[$imagerequst]['tmp_name'];
    $imageSize              = $_FILES[$imagerequst]['size'];
    $alloweEX               = array('png' , 'jpg' , 'jpeg', 'gif' , 'mp3' , 'mp4'  , 'mkv' , 'mov' , 'wmv' );
    $imageToarray           = explode('.' , $imageName);
    $image_EX               = end($imageToarray);
    $image_EX               = strtolower($image_EX);

    if(!empty($imageName) && !in_array($image_EX , $alloweEX)){
         $errormasage[] = "error in image type";
    }
    if($imageSize > 2 * MB){
       $errormasage[] = "error in image size IS BIGGER THAN 2MB";
    }
    if(empty($errormasage)){
        move_uploaded_file($imagetmp , "../upload/".$imageName);
        return $imageName;
    }else{
        return "Faild";
    }


}



function deletimage($dir ,$imageName){
    if(file_exists($dir . "/" . $imageName)){
        unlink($dir . "/" . $imageName);
    }

}





function checkAuthenticate()
{
    if (isset($_SERVER['PHP_AUTH_USER'])  && isset($_SERVER['PHP_AUTH_PW'])) {

        if ($_SERVER['PHP_AUTH_USER'] != "admin@admin.com" ||  $_SERVER['PHP_AUTH_PW'] != "admin12345"){
            header('WWW-Authenticate: Basic realm="My Realm"');
            header('HTTP/1.0 401 Unauthorized');
            echo 'Page Not Found';
            exit;
        }
    } else {
        exit;
    }
}


?>