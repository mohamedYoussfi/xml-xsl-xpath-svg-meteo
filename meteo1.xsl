<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Meteo</title>
            </head>
            <body>
                <xsl:for-each select="meteo/mesure[@date='2025-02-28']">
                   <ul>
                       <li>Date mesure : <xsl:value-of select="@date"/></li>
                   </ul>
                   <table border="1" width="90%">
                       <tr>
                           <th>Ville</th>
                           <th>Température</th>
                       </tr>
                       <xsl:for-each select="ville">
                           <tr>
                               <td><xsl:value-of select="@nom"/></td>
                               <td><xsl:value-of select="@temperature"/></td>
                           </tr>
                       </xsl:for-each>
                       <tr>
                           <td>Nombre de villes</td>
                           <td><xsl:value-of select="count(ville)"/></td>
                       </tr>
                       <tr>
                           <td>Tmperature Moyenne</td>
                           <td><xsl:value-of select="avg(ville/@temperature)"/></td>
                       </tr>
                   </table>
               </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>