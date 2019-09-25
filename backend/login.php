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

if (isset($_POST['email']) && isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $errors = [];
    if (strlen($email) <= 0) {
        array_push($errors, ['email'=>'The email field is required.']);
    } 
    if (strlen($password) <= 0) {
        array_push($errors, ['password'=>'The Password Field Is Required.']);
    }

    if (!count($errors)) {
        list($state, $token) = $obj->token($email , $password);
        $type = $obj->userType($email);
        if ($state){
            $response = ['status' => 1, 'message' => 'Logged In Successfully!', 'token' => $token , 'type' => $type];
            echo json_encode($response);
        } else {
            $errors['login'] = $token;
            $response = ['status' => 0 ,'errors' => $errors];
            echo json_encode($response);
        }
    }
}