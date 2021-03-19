<?php 

require 'model/functions.php'; 

if(isset($_GET['id'])&& !empty($_GET['id'])){
    $id = $_GET['id'];
}

$article_author = getAuthorById($id);
//var_dump($article_category);
$author_articles = getArticlesByAuthor($id); 
//var_dump($category_articles);

require 'views/authorView.php';