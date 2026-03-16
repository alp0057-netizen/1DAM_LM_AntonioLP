<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="/">
        Carta de desayunos
        <xsl:apply-templates/>
        <xsl:apply-templates select="//descripcion"/>
    </xsl:template>
    
    <xsl:template match="desayuno">
        Desayuno: <xsl:value-of select="nombre"/>
        <xsl:text> </xsl:text> 
        <xsl:value-of select="precio"/>
    </xsl:template>
    
    <xsl:template match="descripcion">
        Descripcion: <xsl:value-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>