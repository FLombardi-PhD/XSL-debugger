<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="xml"/>
    
    <xsl:template match="/*">
        <xsl:element name="a">
            <xsl:attribute name="elem">
                <xsl:value-of select="name()"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="/*/*">
        <xsl:element name="b">
            <xsl:element name="c">
                <xsl:value-of select="name()"/>
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="/*/*/*">
       <xsl:apply-templates/> 
    </xsl:template>
    
    <xsl:template match="*">
        <xsl:element name="{name()}">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>