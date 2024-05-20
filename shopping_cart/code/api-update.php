<?php

header("Content-Type: application/json");
header("Acess-Control-Allow-Origin: *");
header("Acess-Control-Allow-Methods: PUT");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$data = json_decode(file_get_contents("php://input"), true);

$prod_id = $data["prod_id"];
$prod_name =$data["prod_name"];
$prod_details =$data["prod_details"];

require_once "dbconfig.php";

$query = "UPDATE cart_data SET prod_name= '".$prod_name."' , 
                                 prod_details= '".$prod_details."' 
                           WHERE prod_id='".$prod_id."' ";

if(mysqli_query($conn, $query) or die("Update Query Failed"))
{	
	echo json_encode(array("message" => "Product Update Successfully", "status" => true));	
}
else
{	
	echo json_encode(array("message" => "Product Update Not Successfully", "status" => false));	
}

?>