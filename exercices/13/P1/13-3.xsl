<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
  <html>
    <body>
      <h2 align="center">Partie 1 : XSLT 3 - Mise au jour du patron VERB-DET-NOM</h2>
        <table align="center" border="2" width="50%" height="80px">
          <tr>
            <td align="center"><strong>Type</strong></td>
            <td align="center"><strong>String</strong></td>
            <td align="center"><strong>Lemma</strong></td>
          </tr>
          

            <xsl:for-each select="//element">
            <xsl:choose>
  
                <xsl:when test="(./data[1][contains(text(),'VER')]) and following-sibling::element[1][./data[1][contains(text(),'DET')]] and
                following-sibling::element[2][./data[1][contains(text(),'NOM')]]"> 
                
                <tr bgcolor="b2eee6">
                <td align="center"><xsl:value-of select=".//data[1]"/></td>
                <td align="center"><xsl:value-of select=".//data[3]"/></td>
                <td align="center"><xsl:value-of select=".//data[2]"/></td>
                </tr>
                <tr bgcolor="f99192">
                <td align="center"><xsl:value-of select="following-sibling::element[1]/data[1]"/></td>
                <td align="center"><xsl:value-of select="following-sibling::element[1]/data[3]"/></td>
                <td align="center"><xsl:value-of select="following-sibling::element[1]/data[2]"/></td>
                </tr>
                <tr bgcolor="#b3f9fb">
                <td align="center"><xsl:value-of select="following-sibling::element[2]/data[1]"/></td>
                <td align="center"><xsl:value-of select="following-sibling::element[2]/data[3]"/></td>
                <td align="center"><xsl:value-of select="following-sibling::element[2]/data[2]"/></td>
                </tr>
              </xsl:when>

              <xsl:otherwise>
               <tr>
              <td align="center"><xsl:value-of select=".//data[1]"/></td>
              <td align="center"><xsl:value-of select=".//data[3]"/></td>
              <td align="center"><xsl:value-of select=".//data[2]"/></td>           
              </tr>
            </xsl:otherwise>
          </xsl:choose>

          </xsl:for-each> 
        </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
