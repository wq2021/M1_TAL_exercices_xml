<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" encoding="utf-8"/>
<xsl:template match="/">
<!--l'affichage du nombre des types OBJ trouvés-->
<xsl:variable name="match" select="//items/item/a[7][contains(text(),'OBJ')]"/><xsl:value-of select="count($match)"/>
<xsl:text>
</xsl:text>

<xsl:apply-templates select="//item"/>
</xsl:template>

  <!--Trouver d'abord des types OBJ-->
  <xsl:template match="item">
    <xsl:if test="./a[7][contains(text(),'OBJ')]">
      <!--définir des variables: $obj pour la forme du type OBJ extrait-->
      <!--$obj_num pour l'index du type OBJ extrait-->
      <!--$gov_num pour l'index du gouverneur du type OBJ correspondant. une fois on trouve des formes ayant le pos "OBJ", il contient l'index de son gouverneur. Par exemple "OBJ(33)", 33 est l'index qu'on veut trouver pour répérer le gouverneur à extraire, d'abord, on divise "OBJ(33)" en deux partie avec le séparateur "(", donc "OBJ" et "33)", après on prend la deuxième partie "33)" pour faire la deuxième division avec la séparateur ")", et on prend la valeur avant la parenthèse fermante -->
      <!--$ecart est la soustraction de $gov_num par $obj_num, pour trouver si le gouverneur est avant son objectif-->
      <xsl:variable name="obj" select="./f/text()"/>
      <xsl:variable name="obj_num" select="@pos"/>
      <xsl:variable name="gov_num" select="substring-before(substring-after(./a[7]/text(), '('),')')"/> 
      <xsl:variable name="ecart" select="$obj_num - $gov_num"/>
        <xsl:choose>
      <!--$ecart > 0 : le gouverneur est avant son objectif, on cherche la forme précédente pour trouver le gouverneur avec l'index soustrait $ecart-->
            <xsl:when test="$ecart > 0">
                <xsl:value-of select="preceding-sibling::*[$ecart]/f/text()"/><xsl:text> </xsl:text><xsl:text> --- </xsl:text>
                <xsl:value-of select="$obj"/><xsl:text>
</xsl:text>
            </xsl:when>
      <!--Sinon : le gouverneur est après son objectif, on cherche la forme suivante pour trouver le gouverneur avec l'index soustrait $ecart-->
                    <xsl:otherwise>
                      <xsl:value-of select="$obj"/><xsl:text> </xsl:text><xsl:text> --- </xsl:text>
                      <xsl:value-of select="following-sibling::*[-$ecart]/f/text()"/><xsl:text>
</xsl:text>
                    </xsl:otherwise>


        </xsl:choose>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>