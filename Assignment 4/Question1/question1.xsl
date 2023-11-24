<?xml version="1.0"?>
<xsl:stylesheet
 version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns="http://www.w3.org/1999/xhtml">
 <xsl:output method="xml" indent="yes" encoding="UTF-8"/>


   <xsl:template match="/carServiceStation">


   <html>
	<head>
	   <title>question2</title>
	</head>
		
	<body>
	   <h3><u>Car service repository</u></h3>
	   <i><b>Car Service Station: </b> <xsl:value-of select="@name" /></i>
	   <br /><br /> 
	   <table style="padding-left: 30px; font-size:12px;">
	   <xsl:for-each select="cars">
		<tr>
			<td>
				<b>Car plate:</b>
				<xsl:value-of select="carPlate" /><br />
			</td>
		</tr>
		<tr>
			<td>
				<b>Model:</b>
				<xsl:value-of select="model" /><br />
			</td>
		</tr>
		<tr>
			<td>			
				<b>Year:</b>
				<xsl:value-of select="year" /><br />
			</td>
		</tr>
		<tr>
			<td>
				<b>Service Card:</b>
			</td>
		</tr>
		<tr>
			<td>
				<xsl:for-each select="serviceCard">
					<ul style="margin-left:38px;">
				   	   <li><xsl:value-of select="date" />
					   <xsl:text>, </xsl:text>
				           <xsl:value-of select="service" /></li>
					</ul>
				</xsl:for-each>
			</td>
		</tr>
	   </xsl:for-each>
	   </table>
	</body>	

   </html>


   </xsl:template>

</xsl:stylesheet>