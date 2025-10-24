<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <!-- Template to display all employee details -->
    <xsl:template match="employees">
        <html>
            <head>
                <title>ADSE Employee Details</title>
                <!-- Link to the external employee CSS -->
                <link rel="stylesheet" type="text/css" href="../css/employees.css"/>
            </head>
            <body>
                <h1>ADSE 2501 Employee Information</h1>

                <!-- Use a table to display the employee details -->
                <table class="data-table" border="1">
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Department</th>
                        <th>Language</th>
                        <th>Summary</th>
                    </tr>

                    <xsl:for-each select="employee">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="age"/></td>
                            <td><xsl:value-of select="department"/></td>
                            <td><xsl:value-of select="language"/></td>
                            <td><xsl:value-of select="summary"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
