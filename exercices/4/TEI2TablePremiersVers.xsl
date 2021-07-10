<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<!-- emploi: xsltproc fichier_xsl fichier_xml  -->

<xsl:template match="/">
<xsl:for-each select="//text[front]">
 <html>
  <body>
  	<p><strong> Auteur : </strong><xsl:value-of select="//author"/></p>
  	<p><strong> Nom du recueil : </strong><xsl:value-of select="//title"/></p>
  	<p><strong> Premier vers : </strong><xsl:value-of select="body/lg/l[position() = 1]"/></p>        
  </body>
 </html>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>