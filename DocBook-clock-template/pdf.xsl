<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

  xmlns:fo="http://www.w3.org/1999/XSL/Format"

version="1.0">


<!--  xsltproc -o output.fo   ADDDOUBLEHYPHENstringparam  paper.type A4 /usr/share/xml/docbook/stylesheet/docbook-xsl-ns/fo/docbook.xsl input.xml 


fop -fo output.fo -pdf document.pdf -->

<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/fo/docbook.xsl"/>

<xsl:param name="index.on.type">1</xsl:param>
<xsl:param name="glossterm.auto.link">1</xsl:param>

<xsl:param name="paper.type">A4</xsl:param>
<xsl:param name="page.orientation">portrait</xsl:param>

<xsl:param name="chapter.autolabel">0</xsl:param>
<xsl:param name="part.autolabel">0</xsl:param>
<xsl:param name="section.autolabel">0</xsl:param>

<!--
<xsl:param name="column.count.body">2</xsl:param>
<xsl:param name="column.count.back">2</xsl:param>

-->

<xsl:param name="column.count.index">1</xsl:param>


<!-- These vastly improve presentation of glossay lists nad variable lists! -->

<xsl:param name="glossary.as.blocks">1</xsl:param>
<xsl:param name="glosslist.as.blocks">1</xsl:param>

<xsl:param name="variablelist.as.blocks">1</xsl:param>
<xsl:param name="insert.xref.page.number">1</xsl:param> 

<!--

Alternative is body.font.master - see p.87

<xsl:param name="body.font.size">11pt</xsl:param> 

-->

<xsl:param name="body.font.master">11</xsl:param> 
<!--
<xsl:param name="body.font.family">Courier</xsl:param>
<xsl:param name="title.font.family">Courier</xsl:param>

-->

<xsl:param name="body.font.family">Helvetica</xsl:param>
<xsl:param name="title.font.family">Helvetica</xsl:param>

<!-- paragraph alignment -->

<xsl:param name="alignment">left</xsl:param>

<!-- These don't seem to work -->

<xsl:param name="column.gap.back">16pt</xsl:param>
<xsl:param name="column.gap.body">16pt</xsl:param>
<xsl:param name="column.gap.front">16pt</xsl:param>
<xsl:param name="column.gap.index">16pt</xsl:param> 
<!--

<xsl:attribute-set name="index.entry.properties">
  <xsl:attribute name="font-size">10pt</xsl:attribute>
  <xsl:attribute name="line-height">12pt</xsl:attribute>
</xsl:attribute-set>

-->

<xsl:attribute-set name="index.page.number.properties">
  <xsl:attribute name="color">blue</xsl:attribute>
</xsl:attribute-set>




<!-- Not used, keep for reference -->

<xsl:attribute-set name="xref.properties">
  <xsl:attribute name="color">
    <xsl:choose>
      <xsl:when test="self::ulink">blue</xsl:when>
      <xsl:otherwise>inherit</xsl:otherwise>
    </xsl:choose>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="olink.properties">
  <xsl:attribute name="color">
    <xsl:choose>
      <xsl:when test="@xrefstyle = 'MainLink'">red</xsl:when>
      <xsl:otherwise>inherit</xsl:otherwise>
    </xsl:choose>
  </xsl:attribute>
</xsl:attribute-set>

<!-- Component.  I got from component.title.properties in parameters helps. See also p.174 in Stayton. -->

<xsl:attribute-set name="component.title.properties">
  <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
  <xsl:attribute name="space-before.optimum"><xsl:value-of select="concat($body.font.master, 'pt')"></xsl:value-of></xsl:attribute>
  <xsl:attribute name="space-before.minimum"><xsl:value-of select="concat($body.font.master, 'pt * 0.8')"></xsl:value-of></xsl:attribute>
  <xsl:attribute name="space-before.maximum"><xsl:value-of select="concat($body.font.master, 'pt * 1.2')"></xsl:value-of></xsl:attribute>
  <xsl:attribute name="hyphenate">false</xsl:attribute>
  <xsl:attribute name="text-align">
    <xsl:choose>
      <xsl:when test="((parent::article | parent::articleinfo | parent::info/parent::article) and not(ancestor::book) and not(self::bibliography)) or (parent::slides | parent::slidesinfo)">left</xsl:when>
      <xsl:otherwise>start</xsl:otherwise>
    </xsl:choose>
  </xsl:attribute>
  <xsl:attribute name="start-indent"><xsl:value-of select="$title.margin.left"></xsl:value-of></xsl:attribute>
</xsl:attribute-set>








</xsl:stylesheet>



