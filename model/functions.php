<?php

session_start();

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
    $query = "INSERT INTO users (id, lastname, firstname, pseudo, email, password) 
    VALUES (null, '$lastname', '$firstname', '$nickname', '$email', '$password')";
    $con->query($query);
}

function getUserInfosByMail($email) {
    $con = db_connect();
    $query = "SELECT * FROM users 
    WHERE users.email = '$email'";
    $stmt = $con->query($query);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getAllCategories(){
    $con = db_connect();
    $query = 'SELECT * FROM categories';
    $stmt = $con->prepare($query);
    $stmt->execute();
    $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $categories;
}

function getCategoryById($id){
    $con = db_connect();
    $query = 'SELECT * FROM categories
    WHERE categories.id =' . $id;
    $stmt = $con->prepare($query);
    $stmt->execute();
    $category = $stmt->fetch(PDO::FETCH_ASSOC);
    return $category;
}

function getAllArticles() {
    $con = db_connect();
    $query = 'SELECT * FROM articles';
    $stmt = $con->prepare($query);
    $stmt->execute();
    $articles_list = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $articles_list;
}

function getArticleById($id) {
    $con = db_connect();
    $query = 'SELECT * FROM articles
    WHERE articles.id = ' . $id; 
    $stmt = $con->prepare($query);
    $stmt->execute();
    $article_details = $stmt->fetch(PDO::FETCH_ASSOC);
    return $article_details;
}


function getAuthorById($id) {
    $con = db_connect();
    $query = 'SELECT id, pseudo FROM users
    WHERE users.id = '.$id;
    $stmt = $con->prepare($query);
    $stmt->execute();
    $authorName = $stmt->fetch(PDO::FETCH_ASSOC);
    return $authorName;
}

function getArticleCategoriesById($id){
    $con = db_connect();
    $query = 'SELECT categories.id, categories.name 
    FROM categories
    INNER JOIN article_category ON article_category.category_id = categories.id
    INNER JOIN articles ON article_category.article_id = articles.id
    WHERE articles.id =' . $id;
    $stmt = $con->prepare($query);
    $stmt->execute();
    $articleCategories = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $articleCategories;
}

function getArticlesByCategory($id){
    $con = db_connect();
    $query = 'SELECT articles.id, title, image ,content FROM articles
    INNER JOIN article_category ON articles.id = article_category.article_id
    INNER JOIN categories ON article_category.category_id = categories.id
    WHERE categories.id =' . $id;
    $stmt = $con->prepare($query);
    $stmt->execute(); 
    $articlesByCategory = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $articlesByCategory;
}

function getArticlesByAuthor($id){
    $con = db_connect();
    $query = 'SELECT articles.id, title, image ,content FROM articles
    WHERE articles.author_id =' . $id;
    $stmt = $con->prepare($query);
    $stmt->execute(); 
    $articlesByCategory = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $articlesByCategory;
}







