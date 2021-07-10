<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="/">
<xsl:text>VERB-(PRE+DET)-NOM</xsl:text><xsl:text> 
</xsl:text>
<xsl:apply-templates select="//baselexicometrique/trame/items/item"/>
</xsl:template>

<xsl:template match="//baselexicometrique/trame/items/item">
<xsl:choose>
<xsl:when test="./c ='V' and following-sibling::item[2]/c='Pre+D'and following-sibling::item[4]/c='N'">
<xsl:value-of select="./f"/><xsl:text> </xsl:text>
<xsl:value-of select="following-sibling::item[2]/f"/><xsl:text> </xsl:text>
<xsl:value-of select="following-sibling::item[4]/f"/><xsl:text> 
</xsl:text>
</xsl:when>
</xsl:choose>
</xsl:template>

</xsl:stylesheet>
