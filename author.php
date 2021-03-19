<?php 

require 'model/functions.php'; 

if(isset($_GET['id'])&& !empty($_GET['id'])){
    $id = $_GET['id'];
}

require 'views/authorView.php';