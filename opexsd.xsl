<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:template match="/">
      <html>
          <head>Maroc Telecom</head>
          <hr/>
          <body>
              <xsl:for-each select="/operateur/client">
                  <ul>
                      <li>Nom du client :<xsl:value-of select="@nom"></xsl:value-of></li>
                      <li>total des factures: <xsl:value-of select="sum(abbonement/facture/@montant)"></xsl:value-of></li>
                      <li>Mont Moyenne: <xsl:value-of select="avg(abbonement/facture/@montant)"></xsl:value-of></li>
                  </ul>
                      <table border="1" width="75%">
                          <tr>
                      <th>Num abbonement</th><th>Type</th><th>Date abonnement</th> <th> Montant total des factures</th>
                          </tr>
                
                              <xsl:for-each select="abbonement">   
                                  <tr>
                          <td><xsl:value-of select="@num"></xsl:value-of></td>
                          <td><xsl:value-of select="@dateAb"></xsl:value-of></td>
                           <td><xsl:value-of select="@type"></xsl:value-of></td>
             
                            <td><xsl:value-of select="sum(facture/@montant)"></xsl:value-of></td>
                                      </tr>
                                  </xsl:for-each>
                      </table>
                  
              </xsl:for-each>
          </body>
      </html>
  </xsl:template>
</xsl:stylesheet>