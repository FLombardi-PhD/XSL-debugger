<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    
    <xsl:output method="xml"/>
    
    <xsl:template match="/*">
        <xsl:copy>
            <xsl:apply-templates select="*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="a">
        <x>
            <xsl:apply-templates/>
        </x>
    </xsl:template>
    
    <xsl:template match="b">
        <xsl:element name="b">
            <xsl:apply-templates select="text()"/>
        </xsl:element>
        <xsl:apply-templates select="a|b|c|d|e"/>
    </xsl:template>
    
    <xsl:template match="e">
    </xsl:template>
    
    <xsl:template match="*">
        <xsl:element name="{name()}">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>