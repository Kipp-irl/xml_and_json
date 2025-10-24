<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/employees">
        <html>
            <head>
                <title>Underpaid Employees</title>
                <link rel="stylesheet" type="text/css" href="../css/employees.css" />
            </head>
            <body>
                <h1>Employees Paid Below 1250</h1>

                <table border="1" class="data-table">
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Department</th>
                        <th>Language</th>
                        <th>Salary</th>
                        <th>Summary</th>
                    </tr>

                    <!-- Loop through all employees -->
                    <xsl:for-each select="employee">
                        <xsl:choose>
                            <!-- Salary < 1250 -> highlight in red -->
                            <xsl:when test="salary &lt; 1250">
                                <tr style="background-color: #ffcccc;">
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
                                        <xsl:value-of select="salary" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="summary" />
                                    </td>
                                </tr>
                            </xsl:when>

                            <!-- Otherwise, normal row -->
                            <xsl:otherwise>
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
                                        <xsl:value-of select="salary" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="summary" />
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>