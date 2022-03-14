<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
		
<h1> Employee information </h1>

<br/>

<h3> Employees sorted with respect to salary </h3>
		
<table border="0">
    		<tr bgcolor="#32CD32">
      			<th>Name</th>
      			<th>Experience</th>
      			<th>Salary</th>

    		</tr>
    <xsl:for-each select="employees/employee">
    <xsl:sort select="salary" data-type="number"/>
    <tr bgcolor="#239023">
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="experience"/></td>
      <td><xsl:value-of select="salary"/></td>
    </tr>
    </xsl:for-each>
  </table>

		</body>
	</html>
	</xsl:template>

</xsl:stylesheet>

