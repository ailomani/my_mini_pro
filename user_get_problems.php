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
$get_field_3 = mysql_real_escape_string($data->field_3);
$get_field_4 =mysql_real_escape_string($data->field_4);
$get_field_5 = mysql_real_escape_string($data->field_5);
$get_field_6 = mysql_real_escape_string($data->field_6);
$get_field_7 = mysql_real_escape_string($data->field_7);
$get_field_8 =mysql_real_escape_string($data->field_8);


$result = mysql_query("SELECT * FROM medicine where field_1 ='$get_field_1' and field_2  = '$get_field_2' or field_3  = '$get_field_3' or field_4  = '$get_field_4' or field_5
 = '$get_field_5' or field_6  = '$get_field_6' or field_7  = '$get_field_7' or field_8   = '$get_field_8' ");

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