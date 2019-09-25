<?php 

include("classes\connection.php");
include("classes\users.php");
include("classes\books.php");
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$objConn = new DbConnect('localhost','ahmed','123456789','books');
$conn = $objConn->connect();

$objBook = new Books($conn);
$objUser = new Users($conn);

$headers = apache_request_headers();
$token = isset($headers['Authorization']) ? $headers['Authorization'] : ''; 


$user = $objUser->getInfo($token);
$id = $objUser->getId($token);

$books = $objBook->myBook($id);

if($user){
	$response = ['status' => 1 , 'info' => $user , 'books' => $books ];
	echo json_encode($response);
}else{
	$response =['status' => 0 , 'error' => 'token problem'];
}

 ?>