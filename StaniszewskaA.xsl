<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
      <h4>Egzoplanety</h4>
        <table>
          <tr>
            <th>Nazwa</th>
            <th>Typ widmowy</th>
            <th>Gwiazda</th>
            <th>Masa<sup>1</sup></th>
            <th>Odległość<sup>2</sup></th>
            <th>Rok odkrycia</th>
          </tr>
          
          <xsl:apply-templates select="spis/planeta" />
        </table>
        <tr><sup>1</sup>jednostka: <xsl:value-of select="spis/@jedn_m" /></tr>
        <p></p>
        <tr><sup>2</sup>jednostka: <xsl:value-of select="spis/@jedn_odl" /></tr>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="planeta">
  
    <tr>
      <td><xsl:value-of select="@nazwa" /></td>
      <td><xsl:value-of select="typ_widmowy" /></td>
      <td><xsl:value-of select="gwiazda" /></td>
      <td><xsl:value-of select="masa" /></td>
      <td><xsl:value-of select="odleglosc" /></td>
      <td><xsl:value-of select="rok_odkrycia" /></td>
    </tr>
    
  </xsl:template>
  
</xsl:stylesheet>
