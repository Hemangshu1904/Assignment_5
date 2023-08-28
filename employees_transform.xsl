<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Data</title>
            </head>
            <body>
                <h1>Employee personal Information</h1>
                <table border="1">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>dateofbirth</th>
                        <th>Gender</th>
                    </tr>
                    <xsl:apply-templates select="employees/*/personal-information"/>
                </table>
                <h1>Employee Status</h1>
                <table border="1">
                    <tr>
                        <th>Position</th>
                        <th>Salary</th>
                    </tr>
                    <xsl:apply-templates select="employees/*/employment-information"/>
                </table>
                <h1>Contact Information</h1>
                <table border="1">
                    <tr>
                        <th>Email</th>
                        <th>Phone Number</th>
                    </tr>
                    <xsl:apply-templates select="employees/*/contact-information"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="personal-information">
        <tr>
            <td><xsl:value-of select="first-name"/></td>
            <td><xsl:value-of select="last-name"/></td>
            <td><xsl:value-of select="date-of-birth"/></td>
            <td><xsl:value-of select="gender"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="employment-information">
        <tr>
            <td><xsl:value-of select="position"/></td>
            <td><xsl:value-of select="salary"/></td>
        </tr>
    </xsl:template>
        <xsl:template match="contact-information">
        <tr>
            <td><xsl:value-of select="email"/></td>
            <td><xsl:value-of select="phone-number"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
