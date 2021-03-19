<?php 

require 'model/functions.php';

if(isset($_GET['id'])&& !empty($_GET['id'])){
    $id = $_GET['id'];
}

$article = getArticleById($id);
//var_dump($article);
$categories = getArticleCategoriesById($id);
//var_dump($categories);
$author = getAuthorById($article['author_id']);
//var_dump($author);

require 'views/singleView.php';