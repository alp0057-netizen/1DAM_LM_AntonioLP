<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
  
  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="hoja_f1" page-height="29.7cm" page-width="21cm" margin="2cm">
          <fo:region-body/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      
      <fo:page-sequence master-reference="hoja_f1">
        <fo:flow flow-name="xsl-region-body">
          
          <fo:block font-size="20pt" font-weight="bold" text-align="center" margin-bottom="15pt" font-family="Helvetica">
            Informe de Clasificación F1
          </fo:block>
          
          <fo:table border="0.5pt solid black" width="100%">
            <fo:table-header>
              <fo:table-row background-color="#eeeeee" font-weight="bold">
                <fo:table-cell border="0.5pt solid black" padding="5pt"><fo:block>Piloto</fo:block></fo:table-cell>
                <fo:table-cell border="0.5pt solid black" padding="5pt"><fo:block>Escudería</fo:block></fo:table-cell>
                <fo:table-cell border="0.5pt solid black" padding="5pt"><fo:block>Puntos</fo:block></fo:table-cell>
              </fo:table-row>
            </fo:table-header>
            
            <fo:table-body>
              <xsl:for-each select="campeonato/piloto">
                <fo:table-row>
                  <fo:table-cell border="0.5pt solid black" padding="5pt">
                    <fo:block><xsl:value-of select="nombre"/></fo:block>
                  </fo:table-cell>
                  <fo:table-cell border="0.5pt solid black" padding="5pt">
                    <fo:block><xsl:value-of select="escuderia"/></fo:block>
                  </fo:table-cell>
                  <fo:table-cell border="0.5pt solid black" padding="5pt">
                    <fo:block><xsl:value-of select="puntos"/></fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </xsl:for-each>
            </fo:table-body>
          </fo:table>
          
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>