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

								<p><h4><xsl:value-of select="page/corps/consigne/partie1/titre"/></h4></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p1"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p2"/></p>
								<p><h4><xsl:value-of select="page/corps/consigne/partie2/titre"/></h4></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p1"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p2"/></p>
								<p><h4><xsl:value-of select="page/corps/consigne/partie3/titre"/></h4></p>
								<p><xsl:value-of select="page/corps/consigne/partie3/p"/></p>											
							<section>
								<h3><strong></strong></h3>
							</section>

						<section>
							<header>
								<h3><strong>Réponse:</strong></h3>
							</header>
								<p><h4><xsl:value-of select="page/corps/consigne/partie1/titre"/></h4></p>
  									<table>
  									<tr>	
										<td>Question</td>
										<td>Réponse</td>
										<td>Résultat</td>	
									</tr>
									<tr>
										<td>1</td>
										<td>count(//entry)</td>
										<td>201355</td>	
									</tr>
									<tr>
										<td>2</td>
										<td>count(distinct-values(//pos/@name))</td>
										<td>22</td>	
									</tr>

								</table>
								<p><h4><xsl:value-of select="page/corps/consigne/partie2/titre"/></h4></p>
								<p align="center">
									<a href="exercices/16/16-200-elements.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-1 : script</a>
									<a href="exercices/16/200-elements.xml" class="button" style="margin-right:15px;" target="blank">XSLT-1 : sortie</a></p>
								<p align="center">	
									<a href="exercices/16/16-dico-verbes.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-2 : script</a>
									<a href="exercices/16/dico-verbes.txt" style="margin-right:15px;" class="button" target="blank">XSLT-2 : sortie</a></p>

								<p><h4><xsl:value-of select="page/corps/consigne/partie3/titre"/></h4></p>
								<p align="center">
									<a href="exercices/16/16-genres.xq" style="margin-right:15px;" class="button" target="blank">XQuery : requête</a><a href="exercices/16/genres-resultat.txt" style="margin-right:15px;" class="button" target="blank">XQuery : sortie</a></p>
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

