<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
//include("classes\connection.php");
include("classes\users.php");
include("classes\books.php");
//include ("details.php");
//$objConn = new DbConnect('localhost','ahmed','123456789','books');
//$conn = $objConn->connect();
//$objBook = new Books($conn);
//$objUser = new Users($conn);


 if(isset($_POST["encoded_string"])){
 	 

	$encoded_string = $_POST["encoded_string"];
	$image_name = $_POST["image_name"];
	$url =$_POST["url"];
	$author_name = $_POST['author_name'];
	$rate = $_POST['rate'];
	$published_at = $_POST['published_at'];
	$description = $_POST['description'];



	$decoded_string = base64_decode($encoded_string);
	
	$path = 'images/'.$image_name;
	
	$file = fopen($path, 'wb');
	
	$is_written = fwrite($file, $decoded_string);
	fclose($file);
	
	$decoded_string = base64_decode($encoded_string);
	
	$path1 = 'books/'.$image_name;
	
	$file = fopen($path1, 'wb');
	
	$is_written = fwrite($file, $decoded_string);
	fclose($file);

	if($is_written > 0) {
		
		$connection = mysqli_connect('localhost', 'ahmed', '123456789','books');
		
		$query = "INSERT INTO books (title,image_path,url,author_name,rate,published_at,description) values('$image_name','$path','$path1','$author_name','$rate','$published_at','$description');";
		
		$result = mysqli_query($connection, $query) ;
		
		if($result){
			echo "success";
		}else{
			echo "failed";
		}
	
	}
 }
?>
