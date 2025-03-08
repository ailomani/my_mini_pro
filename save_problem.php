<?php
	/* ************************************************************
	***************  - CPanel*******************
	***************************************************************
	********************** Update Product  ************************
	***************************************************************/

/* Update Product  */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db
$db = new DB_CONNECT();

// check for post data
$data = json_decode(file_get_contents("php://input"));

$get_product_id = mysql_real_escape_string($data->id);
$get_field_1 = mysql_real_escape_string($data->field_1);

if(empty($get_field_1))
{
	$response["success"] = 2;
	echo json_encode($response);
}

else
{
		$result = mysql_query("UPDATE problems SET field_1='$get_field_1'   
				WHERE pid = '$get_product_id'");
	if($result)
	{
		$response["success"] = 1;
		echo json_encode($response);
	}
	else
	{
		$response["success"] = 0;
		echo json_encode($response);
		echo "Both file and data not inserted";
	}
}
?>