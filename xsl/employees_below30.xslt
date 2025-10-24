<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <!-- Template for the root element -->
    <xsl:template match="/employees">
        <html>
            <head>
                <title>Employees Under 30</title>
                <link rel="stylesheet" type="text/css" href="../css/employees.css" />
            </head>
            <body>
                <h1>Employees Aged Below 30</h1>

                <table border="1" class="data-table">
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Department</th>
                        <th>Language</th>
                        <th>Summary</th>
                    </tr>

                    <!-- Filter employees where age < 30 -->
                    <xsl:for-each select="employee[age &lt; 30]">
                        <tr>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="age" />
                            </td>
                            <td>
                                <xsl:value-of select="department" />
                            </td>
                            <td>
                                <xsl:value-of select="language" />
                            </td>
                            <td>
                                <xsl:value-of select="summary" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <!-- Message if no employees match -->
                <xsl:if test="not(employee[age &lt; 30])">
                    <p>No employees under 30 found.</p>
                </xsl:if>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>