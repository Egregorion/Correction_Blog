<?php 

require 'model/functions.php';

if(isset($_POST) && !empty($_POST)){
    $post = $_POST;
    $email = $post['email'];
    $password = $post['password'];
    $user = getUserInfosByMail($email);
    if(password_verify($password, $user['password'])){
        session_start();
        $_SESSION['user'] = [
            'id' => $user['id'],
            'lastname' => $user['lastname'],
            'firstname' => $user['firstname'],
            'nickname' => $user['pseudo'],
            'email' => $user['email']
        ];
        header('location:index.php?status=success&message=sign in successfull');
    }else {
        header('location:login.php?status=danger&message=failed to sign in');
    }
}

require 'views/loginView.php';