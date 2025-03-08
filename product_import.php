
<?php
/************************ YOUR DATABASE CONNECTION START HERE   ****************************/
ob_start();

define('DB_USER', "root"); // db user
define('DB_PASS', ""); // db password (mention your db password here)
define('DB_NAME', "health_sympton"); // database name
define('DB_HOST', "localhost"); // db server

/*define('DB_USER', "crewafl2"); // db user
define('DB_PASS', "W6W_O8_Q1?J?"); // db password (mention your db password here)
define('DB_NAME', "crewafl2_crew"); // database name
define('DB_HOST', "localhost"); // db server*/


$link = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Couldn't make connection.");
$db = mysql_select_db(DB_NAME, $link) or die("Couldn't select database");

$databasetable = "excel";

/************************ YOUR DATABASE CONNECTION END HERE  ****************************/


set_include_path(get_include_path() . PATH_SEPARATOR . 'Classes/');
include 'PHPExcel/IOFactory.php';

// This is the file path to be uploaded.
$inputFileName = 'disease_details.xlsx'; 

try {
	$objPHPExcel = PHPExcel_IOFactory::load($inputFileName);
} catch(Exception $e) {
	die('Error loading file "'.pathinfo($inputFileName,PATHINFO_BASENAME).'": '.$e->getMessage());
}


$allDataInSheet = $objPHPExcel->getActiveSheet()->toArray(null,true,true,true);
$arrayCount = count($allDataInSheet);  // Here get total count of row in that Excel sheet


for($i=2;$i<=$arrayCount;$i++){

$get_email = $_POST["cook_admin_email"];
$get_field_1 = trim($allDataInSheet[$i]["A"]);
$get_field_2 = trim($allDataInSheet[$i]["B"]);
$get_field_3 = trim($allDataInSheet[$i]["C"]);
$get_field_4 = trim($allDataInSheet[$i]["D"]);
$get_field_5 = trim($allDataInSheet[$i]["E"]);
$get_field_6 = trim($allDataInSheet[$i]["F"]);
$get_field_7 = trim($allDataInSheet[$i]["G"]);
$get_field_8 = trim($allDataInSheet[$i]["H"]);
$get_field_9 = trim($allDataInSheet[$i]["I"]);
$get_field_10 = trim($allDataInSheet[$i]["J"]);
$get_created_date =  date('Y-m-d');

$insertTable=  mysql_query("INSERT INTO medicine(email,field_1, field_2, field_3, field_4,
							field_5, field_6,field_7,field_8,field_9,field_10,created_date	)
					VALUES(	'$get_email','$get_field_1', 
							'$get_field_2', '$get_field_3', '$get_field_4', '$get_field_5',
							'$get_field_6','$get_field_7', '$get_field_8','$get_field_9','$get_field_10','$get_created_date')");
}
header('Location:admin_view_medicine_details.html');
ob_flush();
?>