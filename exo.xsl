<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>liste des clients</head>
            <hr/>
            <body>
                <xsl:for-each select="operateur/client">
                <h3>NOM du client : <xsl:value-of select="@nom"></xsl:value-of></h3>
                    <table border="1" width="75%">
                        <tr>
                        <th>Num abbonement</th><th>Type</th><th>Date abbonement</th><th>Montant total des factures</th>
                        </tr>
                        <xsl:for-each select="abbonement">
                        <tr>
                            <td><xsl:value-of select="@num"></xsl:value-of></td>
                            <td><xsl:value-of select="@type"></xsl:value-of></td>
                            <td><xsl:value-of select="@dateab"></xsl:value-of></td>
                             <td><xsl:value-of select="sum(facture/@montant)"></xsl:value-of></td>
                        </tr>
                        </xsl:for-each>
                    </table>
            </xsl:for-each> 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>