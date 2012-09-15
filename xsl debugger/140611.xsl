<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    
    <xsl:output method="xml"/>
    
    <xsl:template match="/rad">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="/*//rad">
    </xsl:template>
    
    <xsl:template match="/rad/*">
        <xsl:element name="new">
            <xsl:attribute name="name">
                <xsl:value-of select="name()"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="/*/*">
        <xsl:copy>
            <xsl:apply-templates select="rad"/>
        </xsl:copy>
        <xsl:for-each select="x|y|w|z|x|d">
            <xsl:element name="{name()}">
                <xsl:attribute name="name">
                    <xsl:value-of select="name()"/>
                </xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="*">
        <xsl:apply-templates/>
    </xsl:template>
        
</xsl:stylesheet>