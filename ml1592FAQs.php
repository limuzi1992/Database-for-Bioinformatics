<?php
/* ml1592FAQs.php
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/BCHB697/ml1592/ml1592FAQs.php
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
if (isset($_POST["submit1"]) && !empty($_POST["question"])) 
{
	require_once "ml1592DbConnection.php";
	$question = $_POST["question"];
	//echo ($question);
}
?>
<?php
// use a stored procedure to get the data from db
if(!empty($connection))
{
	$query = 'call FAQs(' . '"' . $question . '")';
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
    <style>
	body {background-image: url("images/questionmark.gif"), url("images/myoglobin.png");
	      background-size: 120px 120px, 120px 120px;
          background-repeat: no-repeat, no-repeat;
          background-position: 70% 20%, right top;
		  background-attachment: fixed, fixed;}
	</style>
    <meta charset="UTF-8" /> 
    <title>
        ml1592FAQs.php
    </title>
    <link rel="stylesheet" type="text/css" HREF="StyleSheets.css" >
</head>
<body>
	<h1>
		Use diseaserelatedprotein Database
		<br></br>
		 <input Type="button" value="Go Back to Report Search Index" onclick="window.location.href='ml1592Index.php'"> 
	</h1>
	<hr>
<form name="form1" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" >
<p> Select one of the frequently asked questions: </p>
<p> 	
	 <input type="radio" name="question" value="1" style ="margin-left:20px"
	 <?php	
		if(!empty($connection) && $question == 1)
		{
			echo " checked";
		}
	  ?>
	 /> What protiens are involved in kidney disease? List the top five proteins with highest sequence length. <br>
	<input type="radio" name="question" value="2" style ="margin-left:20px"
	<?php	
		if(!empty($connection) && $question == "2")
		{
			echo " checked";
		}
	 ?>	  
	/> What proteins are involved in blood disease? List the top five proteins with highest sequence length. <br> 
	<input type="radio" name="question" value="3" style ="margin-left:20px" 
	<?php	
		if(!empty($connection) && $question == "3")
		{
			echo " checked";
		}
	 ?>
	 /> What protien structures determined by X-ray have high resolution? List the top five protein structures with highest resolution. <br>
	<input type="radio" name="question" value="4" style ="margin-left:20px" 
	<?php	
		if(!empty($connection) && $question == "4")
		{
			echo " checked";
		}
	 ?>
	 /> What genes have more than four synonyms? 
</p>

<input type="submit" name="submit1" class="submit" value="Get Answer" />
 
</form>
<hr>
<br>
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
				echo "No data was found for the selected question.";
			} else
			{
				echo '<table class="table1">';
				echo '<caption style="font-size:22pt"> <b>
					This is the answer for the selected question. </b>';
		
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