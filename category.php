<?php 

require 'model/functions.php'; 

if(isset($_GET['id'])&& !empty($_GET['id'])){
    $id = $_GET['id'];
}

$article_category = getCategoryById($id);
//var_dump($article_category);
$category_articles = getArticlesByCategory($id); 
//var_dump($category_articles);

require 'views/categoryView.php';