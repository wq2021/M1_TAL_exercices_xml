<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="/">
	<xsl:for-each select="//pos">
    	<xsl:if test="@name='verb'">
    		<xsl:for-each select="following-sibling::inflected">
    			<xsl:value-of select="./form/text()"/><xsl:text>&#xa;</xsl:text>
    		</xsl:for-each>
    	</xsl:if>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>
