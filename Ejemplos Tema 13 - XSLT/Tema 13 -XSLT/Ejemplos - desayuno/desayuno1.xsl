<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <xsl:output method="text"/>

  <xsl:template match="carta"> 
      Precio del desayuno 1: 
      <xsl:value-of select="desayuno[3]/precio"/>
  </xsl:template>
</xsl:stylesheet>
