<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="xml"/>
    
    <xsl:template match="/r">
        <xsl:element name="r">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="a">
        <xsl:element name="a">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="/*/a | /*/*/*/a">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="b">
        <xsl:element name="{name()}">
            <xsl:apply-templates select="text()|a|c|d|e"/>
        </xsl:element>
        <xsl:apply-templates select="b"/>
    </xsl:template>    
    
    <xsl:template match="*">
        <xsl:element name="{name()}">
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>