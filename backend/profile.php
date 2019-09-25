<?php 

include("classes\connection.php");
include("classes\users.php");
include("classes\books.php");
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$objConn = new DbConnect('localhost','ahmed','123456789','books');
$conn = $objConn->connect();

$obj = new Users($conn);

$headers = apache_request_headers();
$token = isset($headers['Authorization']) ? $headers['Authorization'] : ''; 


$user = $obj->getInfo($token);

if($user){
	$response = ['status' => 1 , 'info' => $user ];
	echo json_encode($response);
}else{
	$response =['status' => 0 , 'error' => 'token problem'];
	echo json_encode($response);
}

 ?>