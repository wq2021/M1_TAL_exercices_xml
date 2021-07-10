<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="/">
<xsl:text>Type de patron sur descriptions: ADJ NOM</xsl:text><xsl:text>
</xsl:text>
<xsl:text>
</xsl:text>
<xsl:apply-templates select=".//description/p"/>
</xsl:template>

<xsl:template match="p">
<xsl:for-each select="./item">
    <xsl:if test="./a[4]/text()='ADJ'">
	  <xsl:variable name="p1" select="./a[2]/text()"/>
	   	<xsl:if test="following-sibling::item[1]/a[4]/text()='NC'">
           	<xsl:variable name="p2" select="following-sibling::item[1]/a[2]/text()"/>      
				<xsl:value-of select="$p1"/><xsl:text> </xsl:text><xsl:value-of select="$p2"/><xsl:text>
</xsl:text>
	  	 </xsl:if>
     </xsl:if>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
