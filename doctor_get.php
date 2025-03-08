<?php
/*********************

**** CPanel ******************
*********/

/* Following code will match admin login credentials */

//user temp array
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();


$data = json_decode(file_get_contents("php://input"));

$get_field_1 = mysql_real_escape_string($data->field_1);
$get_field_2 = mysql_real_escape_string($data->field_2);

$result = mysql_query("SELECT * FROM symptom  WHERE field_4 = '$get_field_1' AND  field_8 = '$get_field_2'");

if(mysql_num_rows($result))
{
	$response["details"] = array();	

	while($Alldetails = mysql_fetch_array($result))
	{
		// temp user array
		$details = array();
		$details = $Alldetails;
		array_push($response["details"],$details);
	}	
	$response["success"] = 1;
	echo json_encode($response);

}
else
{
	$response["success"] = 0;	
	echo json_encode($response);
}
	

?>