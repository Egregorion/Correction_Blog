<?php 

require 'model/functions.php';

if(isset($_GET['id'])&& !empty($_GET['id'])){
    $id = $_GET['id'];
}

$article = getArticleById($id);
$categories = getArticleCategoriesById($id);
$author = getAuthorById($article['author_id']);
$comments = getArticleComments($id);

require 'views/singleView.php';