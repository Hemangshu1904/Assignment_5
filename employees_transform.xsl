<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Employee Information</title>
    </head>
    <body>
      <h1>Employee Information</h1>
      <table border="1">
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Date of Birth</th>
          <th>Gender</th>
          <th>Position</th>
          <th>Salary</th>
          <th>Email</th>
          <th>Phone Number</th>
        </tr>
        <xsl:apply-templates select="employees/*" />
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="employees/*">
  <tr>
    <td><xsl:value-of select="personal-information/first-name"/></td>
    <td><xsl:value-of select="personal-information/last-name"/></td>
    <td><xsl:value-of select="personal-information/date-of-birth"/></td>
    <td><xsl:value-of select="personal-information/gender"/></td>
    <td><xsl:value-of select="employment-information/position"/></td>
    <td><xsl:value-of select="employment-information/salary"/></td>
    <td><xsl:value-of select="contact-information/email"/></td>
    <td><xsl:value-of select="contact-information/phone-number"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>