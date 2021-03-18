<?php

session_start();
if(isset($_SESSION['user']) && !empty($_SESSION['user'])){
    var_dump($_SESSION['user']);
}


function db_connect(){
    include 'connection.php';
    try 
    {
        $db = new PDO('mysql:host=localhost;dbname=blog', $user, $pass);
        return $db;
    } 
    catch(PDOException $e) 
    {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }
}

function addUser($lastname, $firstname, $nickname, $email, $password){
    $con = db_connect();
    $query = "INSERT INTO users (id, lastname, firstname, pseudo, email, password) VALUES (null, '$lastname', '$firstname', '$nickname', '$email', '$password')";
    $con->query($query);
}

function getUserInfos($email) {
    $con = db_connect();
    $query = "SELECT * FROM users 
    WHERE users.email = '$email'";
    $stmt = $con->query($query);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    return $result;
}



