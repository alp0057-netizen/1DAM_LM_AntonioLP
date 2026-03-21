<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Clasificación de Fórmula 1</title>
        <style>
          table { border-collapse: collapse; width: 80%; margin: 20px auto; font-family: sans-serif; }
          th, td { border: 1px solid black; padding: 10px; text-align: center; }
          th { background-color: #15151e; color: white; }
          .fila-campeon { background-color: #ffd700; font-weight: bold; } /* Dorado para el campeón */
          .fila-normal { background-color: #f9f9f9; }
        </style>
      </head>
      <body>
        <h1 style="text-align: center;">Estadísticas F1 - Temporada</h1>
        <table>
          <tr>
            <th>Piloto</th>
            <th>Escudería</th>
            <th>Puntos</th>
            <th>Salario Base</th>
            <th>Salario Total (con Bonus)</th>
          </tr>
          
          <xsl:for-each select="campeonato/piloto">
            <xsl:sort select="puntos" data-type="number" order="descending"/>
            
            <xsl:element name="tr">
              <xsl:attribute name="class">
                <xsl:choose>
                  <xsl:when test="estado = 'Campeón'">fila-campeon</xsl:when>
                  <xsl:otherwise>fila-normal</xsl:otherwise>
                </xsl:choose>
              </xsl:attribute>
              
              <td>
                <xsl:value-of select="nombre"/>
                <xsl:if test="puntos &gt; 200">
                  <span style="color: red;"> (Top Tier)</span>
                </xsl:if>
              </td>
              <td><xsl:value-of select="escuderia"/></td>
              <td><xsl:value-of select="puntos"/> pts</td>
              <td><xsl:value-of select="format-number(salario_base, '#,###')"/> €</td>
              
              <td><xsl:value-of select="format-number(salario_base + bonus, '#,###')"/> €</td>
            </xsl:element>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>