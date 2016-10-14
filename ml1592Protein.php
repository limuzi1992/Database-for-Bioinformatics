<?php
/* ml1592Protein.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/BCHB697/ml1592/ml1592Protein.php
*/
?>

<?php
/*
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
*/
//echo "$UniProtKB_Entry".'<br/>';
if (isset($_POST['submit1']) && !empty($_POST['UniProtKB_Entry'])) 
{
	require_once "ml1592DbConnection.php";
	$UniProtKB_Entry = mysqli_real_escape_string($connection, htmlentities($_POST["UniProtKB_Entry"]));
}
//echo "$UniProtKB_Entry".'<br/>';
?>


<?php
// use a stored procedure to get the data from db
if(!empty($connection))
{
		$query = "call Get_ProteinAlternativeNames(" . '"' . $UniProtKB_Entry. '")';
		//echo $query."<br/>";
		$result = mysqli_query($connection, $query);
		if (!$result)
		{
			die("Database query failed.");
		}
}		
?>

<!DOCTYPE html>
<html lang='en' class="html2">
<head>
    <meta charset="UTF-8" /> 
    <title>
        ml1592Protein.php
    </title>
    <link rel="stylesheet" type="text/css" HREF="StyleSheets.css" >
</head>
<body class="body4">
	<h1>
		Use diseaserelatedprotein Database
		<br></br>
		<input Type="button" value="Go Back to Report Search Index" onclick="window.location.href='ml1592Index.php'">
	</h1>
	<hr>

	<form id="form1" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">

	<p>Get alternative names of the protein of interest by entering the UniProtKB accession number:
	<input type="text" placeholder="Enter UniProtKB ID" name="UniProtKB_Entry"
	<?php
		if(!empty($connection))
		{
			echo 'value="' . $UniProtKB_Entry .'"'; 
		} 
		?>/>
	(Example: O14746)
    </p>
	
	<input type="submit" name="submit1" class="submit" value="Get data" />
	
</form>
<!--  preformatted tag 
<pre> 
<?php

if ($_GET){
	echo 'Contents of the $_GET array: <br>';
	print_r($_GET);
} elseif ($_POST) {
	echo 'Contents of the $_POST array: <br>';
	print_r($_POST);
}

?>
</pre>
-->
<hr>
	<?php
	if (!empty($connection))
	{	
			$NumOfRows = mysqli_num_rows($result);
			$Index = 0;
			//echo "Number of rows = $NumOfRows"."<br/>";
			//echo "check row count <br/>";
			//echo (false);
			//echo ($NumOfRows);

			if ($NumOfRows == 0)
			{
				echo "No proteins have this UniProtKB_Entry <u>$UniProtKB_Entry</u>.";
			} else
			{
				echo '<table class="table1">';
				echo '<caption style="font-size:22pt"> <b>
					The alternative names of the protein </b>';
				echo '<b>' . $UniProtKB_Entry . '</b>'; 
				echo "</caption>";
				echo "<thead>
						<tr>";
				$row = mysqli_fetch_assoc($result);
				//print_r ($row);
				
				foreach($row as $k => $v ) 
				{       
					echo "<th>".$k."</th>";
				}
			
				echo "	</tr>
					</thead>
					<tbody>";

				$check = mysqli_data_seek($result, 0);
				
				 while ($rownew = mysqli_fetch_assoc($result))
				 {
					echo "<tr>";
					foreach($rownew as $k => $v)
					{
					echo "<td>".$v."</td>";
					}
					echo "</tr>";	
				 }
				 
				echo "	</tbody>
					</table>";
			}
	}
	?>
	
	<?php
		if(!empty($connection))
		{
			mysqli_free_result($result);
		}
	?>

</body>
</html>

<?php
	// close database connection
	if(!empty($connection))
	{
		mysqli_close($connection);
	}
?>