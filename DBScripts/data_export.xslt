<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" />
	<xsl:template match="/">
		<xsl:apply-templates />
    </xsl:template>
	<xsl:template match="Table">
		<!-- in generated script, need to replace ' with '' -->
		<div>
			INSERT INTO [dbo].[ANAM_Memorial]([Rank],[FirstName],[LastName],[Status],[Link],[Details]) VALUES(
				N'<xsl:value-of select="Rank" />',
				N'<xsl:value-of select="FirstName" />',
				N'<xsl:value-of select="LastName" />',
				N'<xsl:value-of select="Status" />',
				N'<xsl:value-of select="Link" />',
				N'<xsl:value-of select="Details" />'
			)
		</div>
	</xsl:template>
</xsl:stylesheet>
