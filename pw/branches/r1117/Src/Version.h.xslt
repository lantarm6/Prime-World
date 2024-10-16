<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="build"/>
  <xsl:param name="revision"/>
  <xsl:param name="revision_patched"/>
  <xsl:param name="line"/>
  <xsl:param name="type"/>
	<xsl:output method="text"/>
	<xsl:template match="/">// Version information. Automatically generated by build process
#pragma once
#define PRODUCT_TITLE					"<xsl:value-of select="Product/Content/Game/Title"/>"
#define PRODUCT_DESCRIPTION		"<xsl:value-of select="Product/Content/Game/Description"/>"
#define PRODUCT_TITLE_SHORT		"<xsl:value-of select="Product/Content/Game/ShortTitle"/>"
#define PRODUCT_EXECUTABLE		"<xsl:value-of select="Product/Content/Game/Executable"/>"

#define ENTERPRISE_COMPANY		"<xsl:value-of select="Product/Enterprise/Company"/>"
#define ENTERPRISE_COPYRIGHT	"<xsl:value-of select="Product/Enterprise/Copyright"/>"
#define ENTERPRISE_TRADEMARK	"<xsl:value-of select="Product/Enterprise/Trademarks"/>"

#define VERSION_MAJOR			<xsl:value-of select="Product/Version/Major"/>
#define VERSION_MINOR			<xsl:value-of select="Product/Version/Minor"/>
#define VERSION_PATCH			<xsl:value-of select="Product/Version/Patch"/>
#define VERSION_BUILD     "<xsl:value-of select="$build"/>"
#define VERSION_REVISION	<xsl:value-of select="$revision"/>
#define VERSION_REVISION_PATCHED	<xsl:value-of select="$revision_patched"/>
#define VERSION_LINE			"<xsl:value-of select="$line"/>"
#define VERSION_BRANCH		"<xsl:value-of select="Product/Version/Branch"/>"
#define VERSION_TYPE		"<xsl:value-of select="$type"/>"
	</xsl:template>
</xsl:transform>
