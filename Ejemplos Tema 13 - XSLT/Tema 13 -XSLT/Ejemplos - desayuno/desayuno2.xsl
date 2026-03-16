<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <xsl:output method="text"/>

  <xsl:template match="carta"> 
      Número de desayunos:
      <xsl:value-of select="count(desayuno)"/>
      Tipo de carta:
      <xsl:value-of select="@tipo"/>
  </xsl:template>
</xsl:stylesheet>
