<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="registro">
    <html>
        <head>
            <title>Registros de facturas.</title>
         </head>
         <body>
            <h1>Responsable del registro: <xsl:apply-templates select="responsable"/></h1>
            <xsl:for-each select="factura">
                <table align="center" cellspacing="2" cellpadding="2" width="50%" border="2" text-align="center">
                    <tr>
                        <td style="border: hidden">Factura Numero:<xsl:apply-templates select="num"/></td>
                        <td style="border: hidden">Tipo: <xsl:value-of select="@tipo"/></td>
                    </tr>
                    <tr>
                        <td style="border: hidden">Cliente</td>
                    </tr>
                    <tr>
                        <td style="border: hidden">Nombre: <xsl:apply-templates select="cliente/nombre"/></td>
                        <td style="border: hidden">Documento: <xsl:apply-templates select="cliente/documento"/></td>
                    </tr>
                    <tr>
                        <td style="border: hidden">Telefono: <xsl:apply-templates select="cliente/telefono"/></td>
                        <td style="border: hidden">Email: <xsl:apply-templates select="cliente/email"/></td>
                    </tr>
                    <tr>
                        <th>Codigo</th>
                        <th>Detalle</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Subtotal</th>
                    </tr>
                    <tr>
                        <td align="center"><xsl:value-of select="lineafactura/codigo"/></td>
                        <td><xsl:value-of select="lineafactura/detalle"/></td>
                        <td align="center"><xsl:value-of select="lineafactura/cantidad"/></td>
                        <td align="center"><xsl:value-of select="lineafactura/precio"/></td>
                        <td align="center"><xsl:value-of select="lineafactura/subtotal"/></td>
                    </tr>
                    <tr>
                        <td colspan="4" align="right">Total</td>
                        <td align="center"><xsl:value-of select="total"/></td>
                    </tr>
                </table>
                <br></br>
            </xsl:for-each>
         </body>
    </html>
</xsl:template>
</xsl:stylesheet>