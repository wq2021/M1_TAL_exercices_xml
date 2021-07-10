<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>

<xsl:template match="/">
  <html>
    <body>
      <h2 align="center">Partie 1 : XSLT 1 - Etiquetage par TreeTagger</h2>
        <table align="center" border="2" width="50%" height="80px">
          <tr>
            <td align="center">Type</td>
            <td align="center">String</td>
            <td align="center">Lemma</td>
          </tr>
          <xsl:for-each select="//element">
          <tr>
            <td align="center"><xsl:value-of select="./data[1]"/></td>
            <td align="center"><xsl:value-of select="./data[3]"/></td>
            <td align="center"><xsl:value-of select="./data[2]"/></td>
          </tr>
          </xsl:for-each>      
        </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
