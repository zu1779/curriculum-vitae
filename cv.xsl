<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <div>
      <xsl:for-each select="cv/work-experience">
        <div class="card">
          <div class="card-header">
            <h4><xsl:value-of select="title"/></h4>
          </div>
          
          <ul class="list-group list-group-flush">
            <li class="list-group-item">
              <div class="work-reference">
                <span><xsl:value-of select="company" /> - <xsl:value-of select="contract" /></span>
                <br />
                <span><xsl:value-of select="place"/>, <xsl:value-of select="period"/></span>
              </div>
            </li>
            <li class="list-group-item">
              <div class="work-description">
                <xsl:value-of select="description" disable-output-escaping="yes" />
              </div>
            </li>
            <li class="list-group-item">
              <div class="border p-2" style="position: relative; margin: 16px;">
                <div class="text-white px-2 bg-primary"
                     style="position: absolute; top: -10px; left: 10px;">
                  Conoscenze acquisite
                </div>
                <div style="margin-top: 12px;">
                  <xsl:for-each select="skills/tag">
                    <span class="badge m-1">
                      <xsl:value-of select="." />
                    </span>
                  </xsl:for-each>                
                </div>
              </div>
            </li>
          </ul>
        </div>
      </xsl:for-each>
    </div>
  </xsl:template>
</xsl:stylesheet>