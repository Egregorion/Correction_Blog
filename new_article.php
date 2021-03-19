<?php 

require 'model/functions.php';

if(isset($_SESSION['user']) && !empty($_SESSION['user'])){

    if(isset($_POST) && !empty($_POST)){
        $upload_dir = "upload/";
        $tmp_name = $_FILES['image']['tmp_name'];
        $img_name = $_FILES['image']['name'];
        $prefix = uniqid();
        $destination = $upload_dir.$prefix.$img_name;
        //var_dump($destination);
        move_uploaded_file($tmp_name, $destination);
    }

    require 'views/newArticleView.php';

} else {
    header('location:login.php?status=danger&message=authenticated user only');
}