<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1"/>

<xsl:template match="/table">
  <html>
  <body>
  <h1 align="center">Infirmières</h1>
  <!--Création de tableau-->
  <table align="center" border="2" width="70%" height="80px">
    <tr>
      <td align="center">Numéro</td>
      <td align="center">Âge</td>
      <td align="center">Années d'étude</td>
      <td align="center">Diplôme</td>
      <td align="center">Ancienneté</td>
      <td align="center">Service</td>
    </tr>
  <!-- On assure que le contenu entre les balises de "classe_anciennete" est différente de celui du précédent-->
  <xsl:for-each select="ligne">
    <xsl:if test="not(preceding-sibling::ligne/classe_anciennete=./classe_anciennete)">
      <!--Affichange des contenus de "classe_anciennete"-->
      <tr><td align="center" colspan="6"><b><xsl:value-of select="./classe_anciennete"/></b></td></tr>
    </xsl:if>
    <tr>
      <!--Extraction et affichage de chaque contenu attendu-->
      <td align="center"><xsl:value-of select="./infirmiere"/></td>
      <td align="center"><xsl:value-of select="./age"/></td>
      <td align="center"><xsl:value-of select="./annees_etudes"/></td>
      <td align="center"><xsl:value-of select="./diplome"/></td>
      <td align="center"><xsl:value-of select="./anciennete_neonatalite"/></td>
      <td align="center"><xsl:value-of select="./service"/></td>
    </tr>
  </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
