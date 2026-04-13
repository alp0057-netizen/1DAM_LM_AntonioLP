<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master
                    master-name="A4-F1" page-height="29.7cm" page-width="21cm" margin="1.5cm">
                    <fo:region-body margin-top="2cm" margin-bottom="1.5cm" />
                    <fo:region-before extent="1.5cm" />
                    <fo:region-after extent="1cm" />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence
                master-reference="A4-F1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block font-family="Helvetica" font-size="9pt" text-align="right"
                        color="#e666" border-bottom="1pt solid #e10600" padding-bottom="3pt">
                        FIA Formula 1 World Championship - Reporte Oficial 2024
                    </fo:block>
                </fo:static-content>

                <fo:static-content flow-name="xsl-region-after">
                    <fo:block font-family="Helvetica" font-size="9pt" text-align="center"
                        color="#666666" border-top="0.5pt solid #cccccc" padding-top="5pt"> Página <fo:page-number />
                    </fo:block>
                </fo:static-content>

                <fo:flow flow-name="xsl-region-body">

                    <fo:block background-color="#e10600" color="white" font-family="Helvetica"
                        font-size="22pt" font-weight="bold" padding="15pt" text-align="center"
                        margin-bottom="25pt">
                        RANKING DE PILOTOS Y FINANZAS
                    </fo:block>

                    <fo:table table-layout="fixed" width="100%" border-collapse="separate">
                        <fo:table-column column-width="40%" />
                        <fo:table-column column-width="30%" />
                        <fo:table-column
                            column-width="15%" />
                        <fo:table-column column-width="15%" /> //
        Encabezado de la tabla con estilo personalizado y fondo oscuro para resaltar los títulos de
        las columnas <fo:table-header>
                            <fo:table-row background-color="#15151e" color="white">
                                <fo:table-cell padding="8pt" display-align="center">
                                    <fo:block font-weight="bold">NOMBRE PILOTO</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="8pt" display-align="center">
                                    <fo:block font-weight="bold">ESCUDERÍA</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="8pt" text-align="center"
                                    display-align="center">
                                    <fo:block font-weight="bold">PTS</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="8pt" text-align="right"
                                    display-align="center">
                                    <fo:block font-weight="bold">SALARIO</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-header>

                        <fo:table-body>
                            <xsl:for-each select="campeonato/piloto">
                                <xsl:sort select="puntos" data-type="number" order="descending" />
                                
                                <fo:table-row
                                    border-bottom="0.5pt solid #dddddd">
                                    <xsl:if test="estado = 'Campeón'">
                                        <xsl:attribute name="background-color">#fff9e6</xsl:attribute>
                                    </xsl:if>

                                    <fo:table-cell padding="10pt">
                                        <fo:block font-family="Helvetica" font-size="11pt">
                                            <xsl:if test="estado = 'Campeón'">🏆 </xsl:if>
                                            <xsl:value-of select="nombre" />
                                        </fo:block>
                                    </fo:table-cell>

                                    <fo:table-cell padding="10pt">
                                        <fo:block font-family="Helvetica" font-size="11pt"
                                            color="#333333">
                                            <xsl:value-of select="escuderia" />
                                        </fo:block>
                                    </fo:table-cell>

                                    <fo:table-cell padding="10pt" text-align="center">
                                        <fo:block font-family="Helvetica" font-weight="bold">
                                            <xsl:value-of select="puntos" />
                                        </fo:block>
                                    </fo:table-cell>

                                    <fo:table-cell padding="10pt" text-align="right">
                                        <fo:block font-family="Helvetica">
                                            <xsl:value-of
                                                select="format-number(salario_base + bonus, '#,###')" />
        € </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>

                    <fo:block font-family="Helvetica" font-size="8pt" color="#999999"
                        margin-top="30pt" font-style="italic">
                        * Los salarios incluyen bonus por rendimiento calculados dinámicamente
        mediante XSLT.
                    </fo:block>

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>