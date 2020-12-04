<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/cv">
  <html lang="en" dir="ltr">
    <style>
      * {
        margin: 0;
        padding: 0;
      }
      body {
        background: url("../../bg/MarblingTexturesVol3/6.jpg") repeat-y;
      }
      .main {
        position: relative;
        width: 100%;
        height: 100vh;
        text-align: center;
        display: flex;
        justify-content: center;
        background: url("../../bg/MarblingTexturesVol3/6.jpg");
        background-size: cover;
        background-repeat: repeat;
      }
      nav {
        width: 100%;
        height: 50px;
        min-width: 100%;
        background-color: #0007;
        line-height: 50px;
      }
      .logo {
        height: 5%;
        position: fixed;
        left: 0;
        top: 0;
        margin-left: 0.5%;
        margin-top: 2px;
      }
      nav ul {
        float: right;
        margin-right: 30px;
      }
      nav ul li {
        font-family: 'Major Mono Display';
        font-size: 20px;
        list-style-type: none;
        display: inline-block;
        transition: 0.7s all;
      }
      nav ul li:hover {
        background-color: #f39d1a;
      }
      nav ul li a {
        color: #ffffff;
        text-decoration: none;
        padding: 20px;
      }
      h1 {
        font-family: 'Questrial', 'Chakra Petch', 'Syncopate', sans-serif;
        color: #000000;
        letter-spacing: 0.25vw;
        line-height: 1.2;
        font-size: 3vw;
        text-align: center;
        span {
          display: block;
          font-size: 10vw;
          letter-spacing: -1.3vw;
        }
      }
      div.header {
        position: absolute;
        left: 20%;
        right: 20%;
        top: 7%;

        width: auto;
        height: auto;
        background: url("../../bg/HolographicBg/02.png");
        background-repeat: repeat;
        background-size: 2000px;
        background-color: rgba(0, 0, 0, 0.75);
        color: #f1f1f1;
        padding-left: 30px;
        padding-right: 10px;
        padding-top: 10px;
        border-radius: 25px;
      }
      td {
        font-family: 'Chakra Petch', 'Syncopate', sans-serif;
        color: #000000;
        font-size: 28px;
      }
      .me {
        opacity: 1;
      }
      .info {
        width: 800px;
      }
      table {
        width: auto;
        height: auto;
      }
      p, h2, h3, h4, ul, li {
        color: black;
        font-family: sans-serif;
      }
      p {
        text-indent: 30px;
      }
    </style>
  <body>
    <div class="main">
      <nav>
        <div class="yes">
          <a href="../index/index.html">
            <img class="logo" src="../../bg/logo/logo5.png"></img>
          </a>
        </div>
        <ul>
          <li><a href="../about/about.html">about</a></li>
          <li><a href="../cv/cv.xml">cv</a></li>
          <li><a href="../art/art.html">Art</a></li>
          <li><a href="../photography/photography.html">photography</a></li>
          <li><a href="../anime/anime.html">Anime</a></li>
          <li><a href="../projects/projects.html">projects</a></li>
          <li><a href="../contact/contact.html">contact</a></li>
        </ul>
      </nav>
      <br></br>
    </div>

    <div class="header"><strong>
      <h1>Adam Ahsan</h1>

      <h2>Education:</h2>
      <p>
        <xsl:for-each select="education">
          <h3>
            <xsl:value-of select="name"/>
            <xsl:value-of select="year"/><br/>
          </h3>
            <xsl:for-each select="subjects">
              <p>- <xsl:value-of select="sub"/></p>
            </xsl:for-each><br/>
        </xsl:for-each>
      </p>

      <hr></hr>

      <h2>Computer Skills:</h2>
      <p>

        <h3>Languages</h3>
        <xsl:for-each select="computerskillsL">
              <p>- <xsl:value-of select="Languages"/></p>
        </xsl:for-each><br/>

        <h3>Softwares</h3>
        <xsl:for-each select="computerskillsS">
              <p>- <xsl:value-of select="software"/></p>
        </xsl:for-each><br/>

      </p>

      <hr></hr>

      <h2>Certification:</h2>
      <p>
        <h4>National Program for Artificial Intelligence and Minister of State for Artificial Intelligence Office</h4>
        <xsl:for-each select="certification">
              <p>- <xsl:value-of select="ai"/></p>
        </xsl:for-each><br/>
      </p>
</strong>
    </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
