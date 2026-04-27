<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/festival">
[
<xsl:for-each select="exhibitors/exhibitor">
  {
    "id": <xsl:value-of select="@id"/>,
    "name": "<xsl:value-of select="name"/>",
    "company": "<xsl:value-of select="company"/>",
    "category": "<xsl:value-of select="category"/>",
    "website": "<xsl:value-of select="website"/>"
  }<xsl:if test="position() != last()">,</xsl:if>
</xsl:for-each>
]
    </xsl:template>
</xsl:stylesheet>