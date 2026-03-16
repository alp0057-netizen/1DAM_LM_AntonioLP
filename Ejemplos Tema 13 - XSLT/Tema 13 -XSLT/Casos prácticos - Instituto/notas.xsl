<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   
  <xsl:output method="text"/> 
  <!--Elimina los espacios en blanco de todos los elementos del documento XML fuente-->
  <xsl:strip-space elements="instituto ciclos notas modulo"/>
  <!--Mantiene el formato original junto con espacios de los elementos indicados-->
  <xsl:template match="//ciclos"> 
  En este instituto se imparten los ciclos de DAW, ASIR y SMR.
  Los alumnos matriculas en LLMM son:
  </xsl:template>
  <xsl:template match="//notas/modulo[@nombre!='LLMM']"> </xsl:template>
</xsl:stylesheet>