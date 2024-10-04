<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- on commence le parcours d�s la racine -->
	<xsl:template match="/">
	<html>
		<head>
			<title>Liste des clients et prospects</title>
		</head>
		<body>
			<table align="center" border="5">
				<tr>
					<th>nom</th><th>prenom</th><th>mail</th><th>mobile</th>
				</tr>
				<xsl:for-each select="/commercial/client">
					<tr>
						<td><xsl:value-of select="@nom"/></td>
						<td><xsl:value-of select="@prenom"/></td>
						<td><xsl:value-of select="@mail"/></td>
						<td><xsl:value-of select="@mobile"/></td>
					</tr>
				</xsl:for-each>
				</table>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>