<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
  <html>
    <body>
      <h2 align="center">Partie 2 : XSLT 2 - ALignement des « titres » et « description »</h2>
        <table align="center" border="2" width="90%" height="80px">
          <tr>
            <td align="center"><strong>Titre</strong></td>
            <td align="center"><strong>Description</strong></td>
          </tr>
        <xsl:apply-templates select="//file"/>
    </table>
    </body>
  </html>

</xsl:template>

<xsl:template match="file">
<xsl:if test="@type='titre'">
<xsl:for-each select="./titre">
<xsl:variable name="t">
<xsl:value-of select="position()"/>
</xsl:variable>

<tr>
<td>
<xsl:for-each select="./p">
<xsl:for-each select="./item">
<xsl:choose>
<xsl:when test="contains(a[2],'§')"/>
<xsl:otherwise>
<xsl:value-of select="./a[2]"/>
<xsl:text> </xsl:text>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:for-each>
</td>

<td>
<xsl:for-each select="../following-sibling::file[1]/description[position()=$t]/p">
<xsl:for-each select="./item">

<xsl:choose>
<xsl:when test="contains(a[2],'§')"/>

<xsl:otherwise>
<xsl:value-of select="./a[2]"/>
<xsl:text> </xsl:text>
</xsl:otherwise>

</xsl:choose>
</xsl:for-each>
</xsl:for-each>

</td>
</tr>

</xsl:for-each>
</xsl:if>
</xsl:template>
</xsl:stylesheet>
