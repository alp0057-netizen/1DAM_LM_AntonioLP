<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
        <head>
          <title>Desayunos</title>
        </head>
        <body>
            <h1>Carta de desayunos</h1>
            <div style="border:solid 3px chocolate;
                        padding:5px; width:300px;
                        box-shadow: 10px 10px 10px grey">
                  <xsl:apply-templates/>
            </div>
        </body>
    </html>  
  </xsl:template>
  <xsl:template match="desayuno">
    <b><xsl:value-of select="nombre"/></b><br/>
  </xsl:template>
</xsl:stylesheet>