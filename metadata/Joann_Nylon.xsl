<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
  <head>
    <title>CUBE - measurement report</title>
    <style type="text/css">
      body{margin:0;}
      .body{background-color: #ffffff;font-family: 'Trebuchet MS', Verdana, Geneva;}
      .banner{background-color:#ff6633;color: #ffffff;width:100%;}
      .banner table, .banner tr, .banner td{width: 100%;color: #ffffff;padding: 0.4em;border-collapse:collapse;vertical-align: middle;}
      .banner h1{margin: 0;font-size: 20pt;}
      .banner a{color: #ffffff;font-size: 0.8em;}
      .brief{padding: 0.3em;}
      .section h2{background-color:#999999;color: #FFFFFF;padding-left: 0.3em;font-size: 16pt;}
      .section p{padding-left: 0.3em;padding-right: 0.3em;}
      .section table, .section th, .section tr, .section td{border-collapse:collapse;border:1px solid #999999;margin-bottom: 1em;}
      .section table{width: 500px;}
      .section th{color: #ffffff;}
      .table_header{background-color:#0099ff;}
      .attributes{width: 200px;}
      .values{width: 250;}
    </style>
  </head>
  <body>
  <div class="body">
    <div class="banner">
      <table>
        <tr>
          <td><h1>CUBE - measurement report</h1></td>
          <td><a href="http://www.specim.fi">http://www.specim.fi</a></td>
        </tr>
      </table>
    </div>
    <p class="brief">
      <b>Sample name: </b>
      <xsl:for-each select="properties/header/key">
        <xsl:choose>
          <xsl:when test="@field = 'sample name'">
            <xsl:copy-of select="." />
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
      <br/>
      <b>Date: </b>
      <xsl:for-each select="properties/header/key">
        <xsl:choose>
          <xsl:when test="@field = 'date text'">
            <xsl:copy-of select="." />
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
      <br/>
      <b>Time: </b>
      <xsl:for-each select="properties/header/key">
        <xsl:choose>
          <xsl:when test="@field = 'time'">
            <xsl:copy-of select="." />
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
      <br/>
      <b>Error: </b>
      <xsl:for-each select="properties/header/key">
        <xsl:choose>
          <xsl:when test="@field = 'error'">
            <xsl:choose>
              <xsl:when test=". = 'failed'">
                <span style="color: red; text-transform: uppercase"><xsl:copy-of select="." />!</span>
              </xsl:when>
              <xsl:when test=". = 'recover'">
                <span style="color: orange; text-transform: capitalize"><xsl:copy-of select="." /></span>
              </xsl:when>
              <xsl:when test=". = 'none'">
                <span style="color: green; "><xsl:copy-of select="." /></span>
              </xsl:when>
              <xsl:otherwise>
                <xsl:copy-of select="." />
              </xsl:otherwise>
            </xsl:choose>
		  </xsl:when>
        </xsl:choose>
	  </xsl:for-each>
	  </p>
      <div class="section">
        <h2>Description</h2>
        <p style="margin-bottom: 1em">
        <xsl:for-each select="properties/userdefined/key">
          <xsl:choose>
            <xsl:when test="@field = 'description'">
              <xsl:copy-of select="."/>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
        </p>
      </div>
      <div class="section">
        <h2>Camera</h2>
        <p>
          <table>
            <tr class="table_header">
              <th class="attributes">Attributes</th>
              <th >Value</th>
            </tr>
            <xsl:for-each select="properties/header/key">
              <xsl:if test="(@field != 'date text') and (@field != 'sample name') and (@field != 'date') and (@field != 'time')and (@field != 'error')">
              <tr>
                <td style="padding-left: 0.5em"><xsl:value-of select="@field"/></td>
                <td style="padding-left: 0.5em"><xsl:value-of select="."/></td>
              </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </p>
      </div>
      <div class="section">
        <h2>Metadata</h2>
        <p>
          <table>
            <tr class="table_header">
              <th class="attributes">Attributes</th>
              <th >Value</th>
            </tr>
            <xsl:for-each select="properties/userdefined/key">
              <xsl:if test="(@field != 'date text') and (@field != 'sample name') and (@field != 'date') and (@field != 'time')and (@field != 'error')">
                <tr>
                  <td style="padding-left: 0.5em">
                    <xsl:value-of select="@field"/>
                  </td>
                  <td style="padding-left: 0.5em">
                    <xsl:value-of select="."/>
                  </td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
        </p>
      </div>
    </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
