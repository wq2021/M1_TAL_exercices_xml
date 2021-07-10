<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<!-- emploi: xsltproc fichier_xsl fichier_xml  -->

<xsl:template match="/">
<xsl:for-each select="//text[front]">
  <html>
  <body>
  <p> <strong> Poème : </strong><xsl:value-of select="front/head"/></p> 
  <p> <strong> Nombre de vers : </strong><xsl:value-of select="count(body/lg/l)"/></p>
  </body>
  </html>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>