<?php
/* ml1592ProteinDiseasenumber.php
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/BCHB697/ml1592/ml1592ProteinDiseasenumber.php
*/
?>

<?php
/*
	$dbhost ="localhost";
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
//var_dump($_POST);
if (isset($_POST["submit1"]) && !empty($_POST["diseasenumber"])) 
{
	require_once "ml1592DbConnection.php";
	$diseasenumber = $_POST["diseasenumber"];
}
?>

<?php
// use a stored procedure to get the data from db
if(!empty($connection))
{
		$query = "call Get_ProteinswithCertainNumberofDiseases(" . '"' . $diseasenumber. '")';
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
        ml1592ProteinDiseasenumber.php
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
	<p> Get a list of proteins involoved in the selected number of diseases: 
	<select style="margin-left:10px" name="diseasenumber">
    <!--option value="" selected disabled>Select a diseasenumber</option--> 
    <option 
  	<?php
		if(!empty($connection))
		{
			echo 'value="' . $diseasenumber .'"'; 
		} else
		{
			echo 'value="" selected disabled';
		}
    ?>
	>
  	<?php
		if(!empty($connection))
		{
			echo ($diseasenumber); 
		} else
		{
			echo 'Select a number';
		}
	 ?> 
    </option>
	
	  <option value="1">1</option>
	  <option value="2">2</option>
	  <option value="3">3</option>
	  <option value="4">4</option>
	</select>
	</p>
	<input type="submit" name="submit1" class="submit" value="Go" />
	
</form>
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
				echo "No proteins are involved in <u>$diseasenumber</u> disease(s).";
			} else
			{
				echo '<table class="table1">';
				echo '<caption style="font-size:22pt">
					<b> The proteins that are involved in </b> ';
				echo '<b>' . $diseasenumber . '</b>' ; 
				echo '<b> disease(s) </b>';
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