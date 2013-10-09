<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="iso-8859-1"/>
	
	<xsl:strip-space elements="*"/>
	
	<xsl:template match="NASAlameda/Images">
        <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
            <head>
                <title>Alameda Naval Air Station 1940-1997</title>
				<link rel="stylesheet" type="text/css" href="styles.css" />
            </head>
            <body>
                <div>
                    <div class="page-container">
                        <xsl:apply-templates />
                    </div>
                </div>
                <div class="clear" />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Image">
        <div class="container">
            <b class="position">
                <xsl:value-of select="position()"/>
            </b>
            <b class="reference">Reference: </b>
            <xsl:value-of select="@Id"/>
            <div class="image-container">
                <img src="Images/JPG/400px/{@Id}.jpg"/>
            </div>
            <div class="info">
                <b>Year: </b>
                <xsl:choose>
                    <xsl:when test="@Year = ''">????</xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="@Year"/>
                    </xsl:otherwise>
                </xsl:choose>
                <b class="image-details">Width: </b><xsl:value-of select="@Width"/>px
                <b class="image-details">Height: </b><xsl:value-of select="@Height"/>px
                <div class="image-dimensions-clear"></div>
				<xsl:if test="@MediaFormat != ''">
					<div>
						<b>Format: </b>
						<xsl:value-of select="@MediaFormat" />
						<xsl:if test="@Quality != ''">
							<b class="image-details">Image Quality: </b>
							<xsl:value-of select="@Quality" />
						</xsl:if>
					</div>
				</xsl:if>
				<div class="caption-space">
					<xsl:if test="@Title != ''">
						<div class="details title-space">
							<b>Title: </b>
							<xsl:value-of select="@Title"/>
						</div>
					</xsl:if>
					<xsl:choose>
						<xsl:when test="OriginalCaption != ''">
							<div class="details">
								<xsl:value-of select="OriginalCaption"/>
							</div>
						</xsl:when>
						<xsl:otherwise>
							<div class="details">
								<xsl:value-of select="Caption"/>
							</div>
						</xsl:otherwise>
					</xsl:choose>
				</div>
			</div>
        </div>
		<!--
        <xsl:if test="(position() mod 4) = 0">
            <div style="clear:left;page-break-after:always;"/>
        </xsl:if>
		-->
    </xsl:template>

</xsl:stylesheet>
