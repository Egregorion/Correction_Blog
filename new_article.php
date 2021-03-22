<?php 

require 'model/functions.php';

if(isset($_SESSION['user']) && !empty($_SESSION['user'])){
    
    $user_id = $_GET['id'];

    if(isset($_POST) && !empty($_POST)){
        $title = $_POST['title'];
        $content = $_POST['content'];
        $upload_dir = "upload/";
        $tmp_name = $_FILES['image']['tmp_name'];
        $img_name = $_FILES['image']['name'];
        $prefix = uniqid();
        $destination = $upload_dir.$prefix.$img_name;
        move_uploaded_file($tmp_name, $destination);
        addArticle($title, $user_id, $destination, $content);
        $last = getLastArticleId($title, $user_id);
        foreach($_POST as $post => $value){
            if(strpos($post, 'cat_') !== false){
                setArticleCategory($last, $value);
            }
        }
        header('location:index.php?status=success&message=new article successfully added');
    }

    require 'views/newArticleView.php';

} else {
    header('location:login.php?status=danger&message=authenticated user only');
}