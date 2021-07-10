<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="UTF-8"/>

<xsl:template match="/">
      	<xsl:text>Partie 2 : XSLT 5 - Extraction des dépendances syntaxique de type OBJ sur des « description » 
</xsl:text><xsl:variable name="match" select="basetalismane/file/description/p/item/a[8][contains(text(),'obj')]"/><xsl:value-of select="count($match)"/>
  <xsl:text> relations de dépendance syntaxique ont été trouvées</xsl:text><xsl:text>
</xsl:text><xsl:text> GOV ---> OBJ:</xsl:text><xsl:text>
</xsl:text>


<xsl:apply-templates select="//file"/>
</xsl:template>

 <xsl:template match="text()"/>
  <xsl:template match="description">
    <xsl:for-each select="./p/item">
      <xsl:call-template name="gov-obj"/>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="gov-obj">
    <xsl:if test="./a[8] ='obj'">
      <xsl:variable name="obj" select="./a[2]/text()"/>
      <xsl:variable name="gov" select="./a[9]/text()"/>
      <xsl:value-of select="preceding-sibling::item[a[1]=$gov]/a[2]/text()"/>
      <xsl:value-of select="following-sibling::item[a[1]=$gov]/a[2]/text()"/>
      <xsl:text> ---> </xsl:text>
      <xsl:value-of select="$obj"/>
      <xsl:text>
 </xsl:text>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>



