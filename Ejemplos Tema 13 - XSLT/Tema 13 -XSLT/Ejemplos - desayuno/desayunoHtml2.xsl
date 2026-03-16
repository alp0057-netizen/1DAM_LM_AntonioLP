<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Carta de desayunos></title>
      </head>
      <body>
        <h1>Carta de desayunos</h1>
        <div style="border:solid 3px blue;padding:5px;width:300px">
          <ul>
            <xsl:apply-templates/>
          </ul>
        </div>
      </body>
    </html>  
  </xsl:template>
  <xsl:template match="desayuno">
    <li><xsl:value-of select="nombre"/></li>
  </xsl:template>
</xsl:stylesheet>