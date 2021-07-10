<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
  <html>
    <body>
      <h2 align="center">Partie 2 : XSLT 4 - mise au jour un patron (<font color="green">NOM</font>-<font color="blue">ADJ</font>) sur des « description » </h2>
        <xsl:apply-templates select="//file"/>
    </body>
  </html>
</xsl:template>

<xsl:template match="file">
<xsl:if test="@type='description'">
<xsl:for-each select="./description">
<p>
<xsl:for-each select="./p/item">
<xsl:choose>
<xsl:when test="./a[4]='NC' and following-sibling::item[1]/a[4]='ADJ'">
<font color="green">
<xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
</font>
</xsl:when>
<xsl:when test="./a[4]='ADJ' and preceding-sibling::item[1]/a[4]='NC'">
<font color="blue">
<xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
</font>
</xsl:when>
<xsl:when test="./a[2] != '§'">
<xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
</xsl:when>
</xsl:choose>
</xsl:for-each>
</p>
</xsl:for-each>
</xsl:if>
</xsl:template>
</xsl:stylesheet>
