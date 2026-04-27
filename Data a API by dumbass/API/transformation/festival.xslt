<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/festival">
{
  "name": "<xsl:value-of select="@name"/>",
  "edition": <xsl:value-of select="@edition"/>,
  "location": "<xsl:value-of select="@location"/>",
  "startDate": "<xsl:value-of select="@startDate"/>",
  "endDate": "<xsl:value-of select="@endDate"/>",
  "description": "První ročník oslavy evropských produktů a open-source veletrh.",
  "ticketsUrl": "https://tickets.example.com",
  "links": {
    "website": "https://example.com",
    "facebook": "https://facebook.com/example"
  }
}
    </xsl:template>
</xsl:stylesheet>