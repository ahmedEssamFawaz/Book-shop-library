<?php
include("classes\connection.php");
include("classes\users.php");
include("classes\books.php");
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$objConn = new DbConnect('localhost','ahmed','123456789','books');
$conn = $objConn->connect();

$obj_users = new Users($conn);

$headers = apache_request_headers();
$token = isset($headers['Authorization']) ? $headers['Authorization'] : ''; 

if($token){
	if($obj_users->getUser($token)){
		$books = $obj_users->showBookList($token);
		$response = ['status' => 1, 'message' => 'My Book List Loaded Fine!' , 'books'=> $books];
		echo json_encode($response);

	}else{
		$response = ['status' => 0, 'message' => 'enter vaild token'];
		echo json_encode($response);
	}
}else{
	$response = ['status' => 0, 'message' => 'Enter Token'];
	echo json_encode($response);
}

?>	