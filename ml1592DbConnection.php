<?php
/* ml1592DbConnection.php
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/BCHB697/ml1592/ml1592DbConnection.php
*/

	$dbhost ="localhost:3306";
	$dbuser = "limuzi";
	$dbpass = "root697";
	$dbname = "ml1592_diseaserelatedprotein";
	$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	// Test if connection occurred.
	if (mysqli_connect_errno()){
		die("Database connection failed: " .
		mysqli_connect_error() .
		" (" . mysqli_connect_errno() . ")"
		);
	}
?>
