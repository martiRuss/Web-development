<?xml version="1.0"?>
<xsl:stylesheet
 version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns="http://www.w3.org/1999/xhtml">
 <xsl:output method="xml" indent="yes" encoding="UTF-8"/>


   <xsl:template match="/result">

   <html>
	<head>
	   <title>question2</title>
	   <style>
		#resultTable {
			border-style: solid;
			border-color: black;
			border-width: 1px;
			border-collapse: separate;
			border-spacing: 5px;	
		}

		#resultTable td {
			border-style: dashed;
			border-color:grey;
			border-width: 1px;
			padding: 10px;
		}

		.col1 {
			color: gray;
			text-align: right;
			font-size: 15px;
		}

		.col2 {
			color: maroon;
			text-align: left;
			font-size: 25px;
		}
	   </style>
	</head>
		
	<body>
	   <h1>Exam result</h1>
	   <table id="resultTable">
	   <tr>
		<td class="col1"><xsl:text>Reference number</xsl:text></td>
		<td class="col2"><xsl:value-of select="@ref" /></td>	
	   </tr>
	   <tr>
		<td class="col1"><xsl:text>Exam number </xsl:text></td>
		<td class="col2"><xsl:value-of select="examId" /></td>	
	   </tr>
	   <tr>
		<td class="col1"><xsl:text>Contestant number </xsl:text></td>
		<td class="col2"><xsl:value-of select="contestantId" /></td>	
	   </tr>
	   <tr>
		<td class="col1"><xsl:text>Digital signature</xsl:text></td>
		<td class="col2"><xsl:value-of select="digitalSignature" /></td>
	   </tr>   
	   <tr>
		<td class="col1"><xsl:text>Score: </xsl:text></td>
		<td class="col2"><xsl:value-of select="score" /></td>
	   </tr>	   
	   <tr>
		<td class="col1"><xsl:text>Band: </xsl:text></td>
		<td class="col2"><xsl:value-of select="band" /></td>
	   </tr>   
   
	   </table>
	</body>	

   </html>


   </xsl:template>

</xsl:stylesheet>