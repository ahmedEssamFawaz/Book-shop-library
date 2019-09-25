<?php
include("classes\connection.php");
include("classes\users.php");
include("classes\books.php");
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$objConn = new DbConnect('localhost','ahmed','123456789','books');
$conn = $objConn->connect();
$obj = new Books($conn);
$books = $obj->getAll();

$response = ['status' => 1, 'message' => 'All Books Loaded Fine!' , 'books'=> $books];
echo json_encode($response);


?>	