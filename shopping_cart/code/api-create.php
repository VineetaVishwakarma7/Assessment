<?php

//http://localhost/students/28Dec_PHP_2023/Webservices/RESTAPI_CRUID_addproduct_searchprodct-main/api-create.php   method post

// insert api
header("Content-Type: application/json");
header("Acess-Control-Allow-Origin: *");
header("Acess-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$data_arr = json_decode(file_get_contents("php://input"), true);

$prod_name =$data_arr["prod_name"]; // value of pname
$prod_details =$data_arr["prod_details"]; // value of price

require_once "dbconfig.php";

$query = "INSERT INTO cart_data(prod_name, prod_details) 
                       VALUES ('".$prod_name."', '".$prod_details."')";

if(mysqli_query($conn, $query) or die("Insert Query Failed"))
{
	echo json_encode(array("message" => "product data created", "status" => true));	
}
else
{
	echo json_encode(array("message" => "product data not created ", "status" => false));	
}

?>