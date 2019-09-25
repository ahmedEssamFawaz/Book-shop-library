<?php 
	
include_once('database\conn.php');
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$errors=[];
$title = $_POST['title'];
$rate = $_POST['rate'];
$published_at = $_POST['published_at'];
$book_description = $_POST['book_description'];
$author = $_POST['author'];
$author_description = $_POST['author_description'];
$publisher = $_POST['publisher'];





 ?>