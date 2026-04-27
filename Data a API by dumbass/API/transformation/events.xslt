<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/festival">
[
<xsl:for-each select="program/day/event">
  {
    "id": "<xsl:value-of select="@id"/>",
    "stageId": "<xsl:value-of select="@stageRef"/>",
    "date": "<xsl:value-of select="../@date"/>",
    "time": "<xsl:value-of select="time"/>",
    "title": "<xsl:value-of select="title"/>",
    "presenter": "<xsl:value-of select="presenter"/>"
  }<xsl:if test="position() != last()">,</xsl:if>
</xsl:for-each>
]
    </xsl:template>
</xsl:stylesheet>