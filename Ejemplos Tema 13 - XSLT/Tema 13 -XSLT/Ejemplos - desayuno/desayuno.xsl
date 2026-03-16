<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <!--No busca etiquetas < ni >, saca texto normal" -->
  <xsl:output method="text"/>
  <!--Elimina los espacios en blanco de todos los elementos del documento XML fuente-->
  <xsl:strip-space elements="*"/>
  <!--Instruye al procesador XSLT para que preserve los espacios en blanco en los elementos desayuno -->
  <xsl:preserve-space elements="desayuno"/>
  <!--Mantiene el formato original junto con espacios de los eleentos indicados-->
  <xsl:template match="desayuno[1] | desayuno[2] | desayuno[3] | desayuno[4]"> No disponible </xsl:template>
</xsl:stylesheet>
