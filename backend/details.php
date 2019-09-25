<?php 
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
include("classes\connection.php");
include("classes\users.php");
include("classes\books.php");


$objConn = new DbConnect('localhost','ahmed','123456789','books');
$conn = $objConn->connect();
$objBook = new Books($conn);
$objUser = new Users($conn);



if(isset($_GET['id'])){
	$book_id = $_GET['id'];
}else {
  	$response = ['status' => 0 , 'message' => "wrong id was sent" ];
  	echo json_encode($response);
  	die;
}


$books_authors_details = $objBook->getBook($book_id);

$headers = apache_request_headers();
$token = isset($headers['Authorization']) ? $headers['Authorization'] : '';     // condition ? action if ture : action if false 

$images = [];
$book_info = [];
$flag = 1; 


$user_id = $objUser->getId($token);


foreach ($books_authors_details as $book) {
	array_push($images, $book['image_path']);
}

array_push($book_info, $books_authors_details[0]);
unset($book_info[0]['image_path']);


if ($token == '') {
	$flag = 0 ;
}else {
	if ($objUser->getUser($token)){
		$flag = 1 ; 
	}else {
		$flag = 0 ; 
	}
}

if($flag == 0 ){
	$book_info[0]['url'] = "";
}


$button = '';
$user_id = $objUser->getId($token);
if($objUser->isBookListed($user_id , $book_id)){
	$book_info[0]['button'] = 'dislike';
}else{
	$book_info[0]['button'] = 'like';
}



$like = isset($_POST['like']) ? $_POST['like'] : '';
if(strlen($like)){
	$user_id = $objUser->getId($token);
	
	if($objUser->isBookListed($user_id , $book_id)){
		$book_info[0]['isListed'] = 'yes';		
		$objUser->deleteBookList($user_id , $book_id);
	}else{
		$book_info[0]['isListed'] = 'no';
		$objUser->addBookList($user_id , $book_id);
	}

}


$response = ['status' => 1 , 'message' => "Book's Info Loaded successfully!" ,'book_info' => $book_info[0] , 'book_images' => $images  ];
echo json_encode($response);




 ?>