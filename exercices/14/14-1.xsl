<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="/">
<!--sélectionner les items où leur type est "forme" en excluant les délimiteurs et les espaces-->
	<xsl:for-each select="//baselexicometrique/trame/items/item[@type='forme']">
    	<xsl:value-of select="./f"/><xsl:text> </xsl:text>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>





