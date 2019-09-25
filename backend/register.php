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

$errors =[] ;
$letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
$letters_big = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
$image_id = 0 ;

if (isset($_POST['email']) && isset($_POST['password']) && isset($_POST['first_name'])) {
    $first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
    $email = $_POST['email'];	
    $password = $_POST['password'];
    $mobile = $_POST['mobile'];
    $type = isset($_POST['type']) ? $_POST['type'] : "user" ; 
    $bio  = "no bio yet";

    if (strlen($email) == 0) {
        $errors["type"] = 'Account Type is Missing!';
    }

    if (strlen($email) == 0) {
        $errors["email"] = 'The email field is required.';
    } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
          $errors["email"] = 'Wrong Email Format!';
    } else {
    	if ($obj->isUsed($email)){
    		$errors["email"] = 'This Email Is Used By Another Person!';
    	}
    }

    if (strlen($password) == 0) {
        $errors["password"] = 'The Password Field Is Required!' ;
    } else if (strlen($password) < 4) {
          $errors["password"] = 'Password So Weak!';
    }

    
    if(strlen($mobile) == 0 ) {
          $errors["mobile"] = 'mobile number field is required!';
    }else{
        if(!preg_match("/^01[0-9]{9}$/", $mobile)){
            $errors["mobile"] = "mobile must be 11 digits and starts with 01";
        }
    }

    if (!count($errors)) {
    	$rand  = md5(uniqid(rand(), true));

        for ($i=0; $i <26 ; $i++) { 
            if($last_name[0] == $letters[$i]){
                $image_id = $i + 1  ;
                break;
            }
        }

    	$obj->add($first_name , $last_name , $email , $password , $mobile , $rand , $image_id , $type , $bio);
        
        $response = array('status' => 1, 'message' => 'registed successfully!' , 'token' => $rand);
        echo json_encode($response);
    }else {
            $response = ['status' => 0 , 'errors' => $errors];
            echo json_encode($response);
    }
    
}else {
    $errors['register'] = 'Email , Password and FirstName must be filled';
    $response = ['status' => 0 , 'errors' => $errors];
    echo json_encode($response);
}



?>