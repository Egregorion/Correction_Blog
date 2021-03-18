<?php 

require 'model/functions.php';

if(isset($_POST) && !empty($_POST)){
    $post = $_POST;
    $lastname = $post['lastname'];
    $firstname = $post['firstname']; 
    $nickname = $post['nickname'];
    $email = $post['email'];
    $plainPassword = $post['password'];
    $password = password_hash($plainPassword, PASSWORD_DEFAULT);

    addUser($lastname, $firstname, $nickname, $email, $password);
}

require 'views/registerView.php';