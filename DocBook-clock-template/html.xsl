<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/xhtml5/onechunk.xsl"/>

<!-- new but doesn't seem to do much -->

<xsl:param name="make.clean.html" select="1"></xsl:param>

<!-- Blank so no css generated. To get it back, remove or add value -->

<xsl:param name="docbook.css.source"></xsl:param>

<!-- end -->

<xsl:param name="chapter.autolabel" select="0"></xsl:param>
<xsl:param name="part.autolabel" select="0"></xsl:param>


<!-- Switch off 
<xsl:param name="generate.toc" select="'book nop'"/>
-->


<xsl:param name="chunker.output.indent">yes</xsl:param>

<xsl:param name="chunk.first.sections" select="1"></xsl:param>

<xsl:param name="index.links.to.section" select="0"></xsl:param>

<xsl:param name="index.prefer.titleabbrev" select="1"></xsl:param>

<xsl:param name="writing.mode" select="lr-tb"></xsl:param>

</xsl:stylesheet>
