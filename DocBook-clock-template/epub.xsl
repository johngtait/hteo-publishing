<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<!-- This file you read here is called a customisation layer -->
<!-- You use this instead of a the generic XSL file to create EPUB-->
<!-- To get a DocBook file, you can export a qusality DocBook file from LyX -->
<!-- You might need to insert "</chapter><chapter>" closing/opening tags around the title elements -->
<!-- (You can also export an EPUB directly from LyX but manual processing gives you more control over parameters, and seems to provide more legible html files that comprise the EPUB content) -->


<!-- Process with: -->
<!-- xsltproc johnepub.xsl my-docbook-file.xml -->
<!-- This creates two folders called META-INF and OEBPS -->
<!-- Hand-edit the HTML files in the folders at this point if needed! -->
<!-- Then process these two folders to a ZIP with the following -->
<!-- It also creates the essential minetype file -->
<!-- zip -r -X mybook.epub mimetype META-INF OEBPS -->
<!-- Then rename to EPUB -->
<!-- You can add a cover image with Sigil for personal use, but Lulu requires this done on upload -->


<!--  HOW IT WORKS -->

<!-- This customisation layer imports the generic EPUB XSL file on your computer below-->
<!-- It does most of the work -->
<!-- There are lots of variant file in the stylesheet folders but this one works -->

<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl/epub/docbook.xsl"/>


<!-- Then John Tait's EPUB customisation layer tweaks -->
<!-- This automatically set the parameters -->

<!-- We want manual control of title element content -->
<!-- This stops you having to amend each one! -->

<xsl:param name="chapter.autolabel" select="0"></xsl:param>
<xsl:param name="part.autolabel" select="0"></xsl:param>
<xsl:param name="section.autolabel">0</xsl:param>

<!-- Generate no toc since epub doesn't need it and distributers might reject book if present-->
<!-- You still seem to get a file but it doesn't get linked -->

<xsl:param name="generate.toc" select="'book nop'"/>

<!-- HTML tweaks IIRC. Not important for basic novels -->

<xsl:param name="index.on.type">1</xsl:param>
<xsl:param name="glossterm.auto.link">1</xsl:param>


<!-- PLACEHOLDER-->


<!-- over -->


</xsl:stylesheet>
