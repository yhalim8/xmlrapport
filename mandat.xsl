<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head><title>rapport</title></head>
            <body>
                <table border="1" width="75%">
                    <tr>
                        <th>NUM</th><th>DATE</th><th>EXP</th><th>DEST</th><th>Montant</th>
                    </tr>
                    <xsl:for-each select="rapport/mandat">
                        <tr>
                            <td><xsl:value-of select="@num"></xsl:value-of></td>
                            <td><xsl:value-of select="@date"></xsl:value-of></td>
                            <td>
                                <li>CIN :<xsl:value-of select="expediteur/@nom"></xsl:value-of></li>
                                <li>NOM :<xsl:value-of select="expediteur/@cin"></xsl:value-of></li>
                            </td>
                            <td>
                                <li>CIN :<xsl:value-of select="destinataire/@nom"></xsl:value-of></li>
                                <li>NOM :<xsl:value-of select="destinataire/@cin"></xsl:value-of></li>
                            </td>
                            <td><xsl:value-of select="@montant"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                    <tr>
                          <td colspan="4">total des montdats</td>
                        <td><xsl:value-of select="sum(rapport/mandat[@etat='recu']/@montant)"></xsl:value-of></td>
                    </tr>                   
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>