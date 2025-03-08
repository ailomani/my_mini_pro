<?php
/*********************
**** Arudhra Innovations *****
**** CPanel ******************
*********/

/* Following register will admin login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();

$data = json_decode(file_get_contents("php://input"));
$get_email = mysql_real_escape_string($data->email);
$get_name = mysql_real_escape_string($data->field_1);




if(empty($get_name) || empty($get_email))
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{
	// get customer 
	$result1 = mysql_query("INSERT INTO tablets
	(field_1, email)VALUES('$get_name','$get_email')");

	// check for empty result
	if($result1)
	{
		
		$response["success"] = 1;
		
		// echoing JSON response
		echo json_encode($response);
	}
	else 
	{
		// unsuccess
		$response["success"] = 0;
		
		// echoing JSON response
		echo json_encode($response);
	}
}
?>