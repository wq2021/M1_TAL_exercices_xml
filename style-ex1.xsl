<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf8"/>
<xsl:template match="/">
<html>
	<head>
		<title>Documents Structurés</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css"/></noscript>
	</head>
 
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">
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
	
			<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><xsl:value-of select="page/corps/exercice"/></h2>
							</header>
								<h3><strong>Consigne:</strong></h3>
								<p></p>
								<p><xsl:value-of select="page/corps/consigne"/></p>

								<img src="exercices/1/consigne.png" height="500" width="800" align="middle"/>
								<h3><strong>Réponse:</strong></h3>
								<p></p>
								<p><xsl:value-of select="page/corps/reponse"/></p>
								<img src="exercices/1/eau.png" height="500" width="800" align="middle"/>
								
						<section>
							<header>
								<h3></h3>
							</header>
								<p align="center"><a href="exercices/1/exercice1.xml" class="button" target="blank">XML</a></p>
						</section>

						</article>
						
					</div>

				</div>


				<!-- Copyright -->
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
