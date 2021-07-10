<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>

<xsl:template match="/">
  <html>
  <body>
  <!--Création de tableau-->
  <table align="center" border="3" width="50%" height="80px">
    <tr>
      <td align="center"><strong>item</strong></td>
      <td align="center"><strong>POS</strong></td>
    </tr>
  <xsl:for-each select="//baselexicometrique/trame/items/item[@type='forme']">
    <tr>
      <!--Extraction et affichage de chaque contenu attendu-->
      <td align="center"><xsl:value-of select="./f"/></td>
      <td align="center"><xsl:value-of select="./c"/></td>
    </tr>
  </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
