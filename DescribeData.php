<!DOCTYPE html>
<!-- DescribeData.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/BCHB697/ml1592/DescribeData.php
-->

<html lang='en' class="html2">
<head>
    <meta charset="UTF-8" /> 
    <title>
        DescribeData.php
    </title>
    <link rel="stylesheet" type="text/css" HREF="StyleSheets.css">
</head>
<body class="body3">
<h1>
    My bioinformatics data set
	<br></br>
	<input Type="button" value="Go Back to Website Documentation Page" onclick="window.location.href='WebsiteDocs.php'"> 
</h1>
<hr>
<ul>
	<li> <b>What is my data set?</b>
	<p> My data collection includes 28 protein records, in which 3 proteins are involved in colon cancer, 15 proteins are involved in kidney disease and 10 proteins are involved in blood disease.  
	My data set contains the protein information like protein name, alternative names, sequence length, mass, protein structures and protein domains. It also includes the gene information like gene symbol, gene name and chromosomal location. 
	What’s more, my data set incorporates the disease information like disease name and disease definition. 
	</p></li>
	
	<li> <b>Why did I select this data set?</b>
	<p> Because I wanted to know the information about the proteins that are closely related to colon cancer, kidney disease, and blood disease. 
	And I also wanted to know the information about the genes encoding the proteins and other diseases in which the proteins are involved.
	</p></li>

	<li> <b>Where and how did I collect this data set?</b>
	<p> I collected the protein information from the Uniprot database, the gene information from the HGNC database and the disease information from the Disease Ontology database.
	</p></li>

	<li> <b>What are the buisness rules or specifications of my data set?</b>
	<p> Click <a href="ml1592_businessrules.pdf" target="_blank" ><b>here</b></a> to download the file of business rules.
	</p></li>
</ul>

</body>
</html>