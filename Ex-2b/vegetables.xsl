<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
		
<h1> Vegetable nutritional information </h1>
		
<table border="0">
    		<tr bgcolor="#32CD32">
      			<th>Food Item</th>
      			<th>Carbs (g)</th>
      			<th>Fiber (g)</th>
      			<th>Fat (g)</th>
      			<th>Energy (kj)</th>
    		</tr>
    <xsl:for-each select="NutritionTable/Food">
    <xsl:if test="Type = 'Vegetable'">
    <tr bgcolor="#239023">
      <td><xsl:value-of select="FoodItem"/></td>
      <td><xsl:value-of select="Carbs"/></td>
      <td><xsl:value-of select="Fiber"/></td>
      <td><xsl:value-of select="Fat"/></td>
      <td><xsl:value-of select="Energy"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
		</body>
	</html>
	</xsl:template>

</xsl:stylesheet>


