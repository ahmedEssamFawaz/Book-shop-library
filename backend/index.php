<?php 

include("classes/users.php");

$obj_conn = new DbConnect("localhost" , "ahmed" , "123456789" , "books") ; 
$conn = $obj_conn->connect();


$obj = new Users($conn);
$obj->showAll();

 ?>