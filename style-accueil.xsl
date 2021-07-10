<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf8"/>
<xsl:template match="/">
<html>
    <head>
      <head>
		<title><xsl:value-of select="page/corps/theme"/></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
      </head>
    </head>
 	<body class="homepage is-preload">
		<div id="page-wrapper">
			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="index.html" id="logo"><xsl:value-of select="page/corps/theme"/></a></h1>
								<hr />
								<p><xsl:value-of select="page/corps/description"/></p>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="accueil.xml">Accueil</a></li>
								<li><a href="exercice1.xml">Exercice 1</a></li>
								<li><a href="exercice3.xml">Exercice 3</a></li>
								<li><a href="exercice4.xml">Exercice 4</a></li>
								<li><a href="exercice7.xml">Exercice 7</a></li>
								<li><a href="exercice13.xml">Exercice 13</a></li>
								<li><a href="exercice14.xml">Exercice 14</a></li>
								<li><a href="exercice16.xml">Exercice 16</a></li>
							</ul>
						</nav>
				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2></h2>
						<p><xsl:value-of select="page/corps/contenu/p1"/></p>
						<p><xsl:value-of select="page/corps/contenu/p2"/></p>
					</header>
				</section>


				<!-- Contact -->
					<div class="copyright" align="center">

						<ul class="menu">
							<li><a>Qi WANG - M1 TAL 2019/2020</a></li>
							<li>Contact: <a href="mailto:wq2021@outlook.com">wq2021@outlook.com</a>
							<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</li>
						</ul>
					</div>
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

    </body>
   </html>
</xsl:template>
</xsl:stylesheet>
