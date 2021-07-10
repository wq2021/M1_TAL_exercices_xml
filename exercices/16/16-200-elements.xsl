<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>

<xsl:template match="/">
  <xsl:apply-templates select="dico"/> 
</xsl:template>

<xsl:template match="dico">
<dico>
  <xsl:for-each select="entry[position() > 2000 and not(position() > 2200)]">
    <xsl:copy-of select="."/>
  </xsl:for-each>
 </dico>
</xsl:template>

</xsl:stylesheet>
