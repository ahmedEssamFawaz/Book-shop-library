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


$response = ['status' => 1, 'message' => 'Load The Best Book For The Slide Show!' , 'best_seller_book'=> $books[11] , "image_1" => "http://beijingbookworm.com/wp-content/uploads/2008/04/Screen-Shot-2016-09-22-at-3.29.29-PM.png" , "image_2" => "https://p8cdn4static.sharpschool.com/userfiles/servers/server_645402/image/news/2018-19%20news%20release%20images/june%202019/students-reading-small.jpg" ];
echo json_encode($response);

?>	