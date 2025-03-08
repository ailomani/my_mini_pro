<?php
	/* ************************************************************
	*************** Arudhra Innovations - CPanel*******************
	***************************************************************
	********************** Delete Product  ************************
	***************************************************************/

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db
$db = new DB_CONNECT();

// check for post data
$data = json_decode(file_get_contents("php://input"));
$get_product_id = mysql_real_escape_string($data->cus_id);
	
if(empty($get_product_id))
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{	
	$result = mysql_query("DELETE FROM 	medicine WHERE cus_id = '$get_product_id'");
	if ($result)
	{
		$response["success"] = 1;
		echo json_encode($response);
	} 
	else
	{
		$response["success"] = 0;
		echo json_encode($response);
	} 
}
?>