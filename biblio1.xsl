<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>biblio</title>
            </head>
            <body>
                <h3>liste des etudiants</h3>
                <xsl:for-each select="/biblio/etudiant">
                    <ul>
                        <li>code:<xsl:value-of select="@code"></xsl:value-of></li>
                        <li>nom:<xsl:value-of select="@nom"></xsl:value-of></li>
                        <li>age:<xsl:value-of select="@age"></xsl:value-of></li>
                    </ul>
                    <table border="1" width="75%" >
                        <tr>
                            <th>ID</th><th>Titre</th><th>Date</th><th>Rendu</th>
                        </tr>
                        <xsl:for-each select="livre[@rendu='oui']">
                        <tr>
                            <td><xsl:value-of select="@id"></xsl:value-of></td>
                            <td><xsl:value-of select="@titre"></xsl:value-of></td>
                            <td><xsl:value-of select="@datepret"></xsl:value-of></td>
                            <td><xsl:value-of select="@rendu"></xsl:value-of></td>
                        </tr>
                        </xsl:for-each>
                        <tr>
                            <td>le nombre de livre emprunte</td>
                            <td colspan="3"><xsl:value-of select="count(livre)"></xsl:value-of></td>
                        </tr>
                        <tr>
                            <td>le nombre de livre non rendu</td>
                            <td colspan="3"><xsl:value-of select="count(livre[@rendu='non'])"></xsl:value-of></td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>