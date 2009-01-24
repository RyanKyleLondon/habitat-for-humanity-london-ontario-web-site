<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!--xsl:output method="xml" media-type="xml"/-->
  <xsl:output method="html" version="4.0"
  encoding="iso-8859-1" indent="yes"/>

  <!-- Format <document> -->
  <xsl:template match="webpage">
    <html>
      <head>
        <title>
          <xsl:value-of select="@title" />
        </title>
        <link type="text/css" rel="stylesheet" href="style0.css" />
        <link rel="shortcut icon" href="favicon.ico" />
        <script language="javascript">
          <![CDATA[
attachNavbarHover = function() {
    var navLIs = document.getElementById("navbar1").getElementsByTagName("li");
    for (var i = 0; i < navLIs.length; i++) {
        navLIs[i].onmouseover = function() { this.className = "mhover"; }
        navLIs[i].onmouseout  = function() { this.className = ""; }
    }
}
if (window.attachEvent)
    window.attachEvent("onload", attachNavbarHover);
    
function toggleVisible(targetName, linkName, typeOfTarget, targetSrc) {
    target = document.getElementById(targetName);
    link = document.getElementById(linkName)
    if (target.style.display == "none") {
        if (targetSrc)
            target.setAttribute("src", targetSrc);
        target.style.display = "block";
        link.innerHTML = "hide " + typeOfTarget;
    } else {
        target.style.display = "none";
        link.innerHTML = "show " + typeOfTarget;
    }
}
]]>
            </script>
            <xsl:comment>[if IE]&gt;
&lt;style&gt;
/* hack: IE and Firefox include border in width computation differently */
.navbar ul li ul { width:131px; }
.navbar ul li ul li a { width:126px; }
#navbar2.navbar { height:4px }
&lt;/style&gt;
              &lt;![endif]</xsl:comment>
          </head>
      <body scroll="yes">
        <div id="content">
          <div id="head">
            <div id="headbar">
              <div id="tinylinks" class="caption">
                <a href="index.html">Home</a> &#8226;
                <a href="contact.html">Contact</a> &#8226;
                <a href="http://habitat-for-humanity-london.blogspot.com/">Blog</a> &#8226;
                <a href="restore.html">ReStore</a> &#8226;
                <a href="http://www.flickr.com/photos/habitatlondon/">Photos</a>
              </div>
              <a href="index.html">
                <img id="logo" alt="" src="images/logo_main.png" width="262" height="61"/>
              </a>
              <object id="headbar_anim" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0">
                <param name="movie" value="images/headbar.swf" />
                <param name="wmode" value="transparent" />
                <embed src="images/headbar.swf" wmode="transparent" quality="high" bgcolor="#ffffff" name="headbar_anim" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
              </object>
              <img id="greenline" src="images/greenline.png" alt="" width="435" height="1"/>
            </div>
            <div id="navbar1" class="navbar">
              <ul>
                <li style="left:0px">
                  <a href="about.html">
                    <div class="button" style="background-image:url('images/head_buttons_about.png')"> </div>
                  </a>
                  <ul>
                    <li>
                      <a href="faq.html">FAQ</a>
                    </li>
                    <li>
                      <a href="about.html">Our Story</a>
                    </li>
                    <li>
                      <a href="stories.html">Family Stories</a>
                    </li>
                    <li>
                      <a href="contact.html">Contact Us</a>
                    </li>
                    <li>
                      <a href="http://habitat.ca/">Habitat Canada</a>
                    </li>
                  </ul>
                </li>

                <li style="left:172px">
                  <a href="donate.html">
                    <div class="button" style="background-image:url('images/head_buttons_donate.png')"> </div>
                  </a>
                  <ul>
                    <li>
                      <a href="donate.html">Donate Now</a>
                    </li>
                    <li>
                      <a href="donate_corporate.html">Corporate Support</a>
                    </li>
                    <li>
                      <a href="restore.html#donate">ReStore Donations</a>
                    </li>
                    <li>
                      <a href="donor_rights.html">Donor Bill of Rights</a>
                    </li>
                  </ul>
                </li>

                <li style="left:344px">
                  <a href="participate_build.html">
                    <div class="button" style="background-image:url('images/head_buttons_participate.png')"> </div>
                  </a>
                  <ul>
                    <li>
                      <a href="restore.html#volunteer">Build Stories</a>
                    </li>
                    <li>
                      <a href="participate_build.html">Build Volunteers</a>
                    </li>
                    <li>
                      <a href="restore.html#volunteer">ReStore Volunteers</a>
                    </li>
                    <li>
                      <a href="participate_committees.html">Join a Committee</a>
                    </li>
                    <li>
                      <a href="participate_board.html">Board of Directors</a>
                    </li>
                  </ul>
                </li>

                <li style="left:516px">
                  <a href="housing.html">
                    <div class="button" style="background-image:url('images/head_buttons_housing.png')"> </div>
                  </a>
                  <ul>
                    <li>
                      <a href="housing.html">How to Apply</a>
                    </li>
                    <li>
                      <a href="stories.html">Family Stories</a>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>

          <table id="article" cellpadding="0" border="0">
            <tr>
              <xsl:apply-templates/>
            </tr>
          </table>

        </div>
        <div id="copyright">&#169; 2009 Habitat for Humanity London Inc.</div>
      </body>
    </html>
  </xsl:template>

  <!-- By default, copy every node encountered under the xml as-is 
       into the HTML output, including attributes. This is so that
       the XML document passes through any regular HTML elements 
       (h1, img, etc) that we don't explicitly handle. -->
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates  select="node()|@*"/>
    </xsl:copy>
  </xsl:template>


  <!-- Format <article> -->
  <xsl:template match="article">
    <td valign="top" id="articlebody">
      <xsl:apply-templates/>
    </td>
  </xsl:template>


  <!-- Format <sidebar> -->
  <xsl:template match="sidebar">
    <td valign="top" id="sidebar">
      <xsl:apply-templates/>
    </td>
  </xsl:template>


</xsl:stylesheet>
