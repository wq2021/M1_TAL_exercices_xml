<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
  <html>
    <body>
      <h2 align="center">Partie 2 : XSLT 1 - Contenus étiquetés des « titres »</h2>
        <table align="center" border="2" width="50%" height="80px">
          <tr>

            <td align="center"><strong>N°</strong></td>
            <td align="center"><strong>Forme</strong></td>
            <td align="center"><strong>Lemma</strong></td>
            <td align="center"><strong>Pos</strong></td>
            
          </tr>
          <xsl:for-each select="//item">
          <tr>
            <td align="center"><xsl:value-of select="./a[1]"/></td>
            <td align="center"><xsl:value-of select="./a[2]"/></td>
            <td align="center"><xsl:value-of select="./a[3]"/></td>
            <td align="center"><xsl:value-of select="./a[4]"/></td>
          </tr>
          </xsl:for-each>      
        </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
