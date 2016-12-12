<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
>
  <xsl:output method="xml" indent="yes" encoding="utf-8"/>
  <!--全局变量：设置页面大小-->
  <xsl:variable name="pageWidth">
    <xsl:value-of select="'21cm'"/>
  </xsl:variable>
  <xsl:variable name="pageHeight">
    <xsl:value-of select="'29.7cm'"/>
  </xsl:variable>
  <xsl:variable name="marginLeft">
    <xsl:value-of select="'0cm'"/>
  </xsl:variable>
  <xsl:variable name="marginRight">
    <xsl:value-of select="'0cm'"/>
  </xsl:variable>
  <xsl:variable name="marginTop">
    <xsl:value-of select="'0cm'"/>
  </xsl:variable>
  <xsl:variable name="marginBottom">
    <xsl:value-of select="'0cm'"/>
  </xsl:variable>

  <xsl:template match="/">
    <fo:root font-family="Arial Unicode MS">
      <fo:layout-master-set>
        <!--页面的信息根据配置进行修改，修改的内容有：页面大小；页边距；页眉；页脚等-->
        <fo:simple-page-master master-name="simple">
          <xsl:attribute name="page-height">
            <xsl:value-of select="$pageHeight"/>
          </xsl:attribute>
          <xsl:attribute name="page-width">
            <xsl:value-of select="$pageWidth"/>
          </xsl:attribute>
          <xsl:attribute name="margin-left">
            <xsl:value-of select="$marginLeft"/>
          </xsl:attribute>
          <xsl:attribute name="margin-right">
            <xsl:value-of select="$marginRight"/>
          </xsl:attribute>
          <xsl:attribute name="margin-top">
            <xsl:value-of select="$marginTop"/>
          </xsl:attribute>
          <xsl:attribute name="margin-bottom">
            <xsl:value-of select="$marginBottom"/>
          </xsl:attribute>
          <fo:region-body  background-color="#666" >
            <xsl:attribute name="margin-top">
              <xsl:value-of select="$marginTop"/>
            </xsl:attribute>
            <xsl:attribute name="margin-bottom">
              <xsl:value-of select="$marginBottom"/>
            </xsl:attribute>
          </fo:region-body>
        </fo:simple-page-master>
      </fo:layout-master-set>

      <fo:page-sequence master-reference="simple">
        <fo:flow flow-name="xsl-region-body" language="zh">
          <!--页面前保存锚点-->
          <fo:block>测试</fo:block>
          <xsl:apply-templates/>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>

</xsl:stylesheet>
