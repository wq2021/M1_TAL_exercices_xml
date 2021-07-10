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
							<section>
								<h3><strong>Consigne:</strong></h3>
								<p></p>
								<p><xsl:value-of select="page/corps/descriptif"/></p>
								<p><xsl:value-of select="page/corps/schema"/></p>
								<img src="exercices/14/schema.png" height="400" width="700" align="middle"/>

								<p><h4><xsl:value-of select="page/corps/consigne/partie1/titre"/></h4></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p1"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p2"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p3"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p4"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p5"/></p>
								<p><h4><xsl:value-of select="page/corps/consigne/partie2/titre"/></h4></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p1"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p2"/></p>
							</section>
							<section>
								<h3><strong></strong></h3>
							</section>

						<section>
							<header>
								<h3><strong>Réponse:</strong></h3>
							</header>
								<p><h4><xsl:value-of select="page/corps/consigne/partie1/titre"/></h4></p>
 
									<p align="center">
									<a href="exercices/14/14-1.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-1 : script</a>
									<a href="exercices/14/14-1.txt" class="button" style="margin-right:15px;" target="blank">XSLT-1 : sortie</a></p>

									<p align="center">
									<a href="exercices/14/14-2.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-2 : script</a>
									<a href="exercices/14/14-2.html" style="margin-right:15px;" class="button" target="blank">XSLT-2 : sortie</a></p>


									<p align="center">
									<a href="exercices/14/14-3-NOM-ADJ.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 : patron NOM - ADJ</a>
									<a href="exercices/14/14-3-NOM-ADJ.txt" style="margin-right:15px;" class="button" target="blank">XSLT-3 : sortie NOM - ADJ</a></p>

									<p align="center">
									<a href="exercices/14/14-3-V-D-N.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 : patron VERB - DET - NOM</a>
									<a href="exercices/14/14-3-V-D-N.txt" style="margin-right:15px;" class="button" target="blank">XSLT-3 : sortie VERB - DET - NOM </a></p>

									<p>Pour les questions 4 et 5, vous pouvez voir les commentaires dans les scripts. Afin de trier les résultats obtenus, la ligne de commande ci-dessous a été utilisé : <strong> xsltproc 14-4.xsl baseTrameurFromRhapsodie.xml | sort | uniq -c | sort -gr > 14-4-trie.txt </strong></p>

									<p align="center">
									<a href="exercices/14/14-4.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-4 : script</a>
									<a href="exercices/14/14-4.txt" class="button" style="margin-right:15px;" target="blank">XSLT-4 : sortie</a>
									<a href="exercices/14/14-4-trie.txt" class="button" style="margin-right:15px;" target="blank">XSLT-4 : après le tri</a>
									</p>

									<p align="center">
									<a href="exercices/14/14-5.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-5 : script</a>
									<a href="exercices/14/14-5.txt" style="margin-right:15px;" class="button" target="blank">XSLT-5 : sortie</a>
									<a href="exercices/14/14-5-trie.txt" class="button" style="margin-right:15px;" target="blank">XSLT-5 : après le tri</a>
									</p>


								<p><h4><xsl:value-of select="page/corps/consigne/partie2/titre"/></h4></p>
								<p align="center">
									<a href="exercices/14/14-1.xq" style="margin-right:15px;" class="button" target="blank">XQeury-1 : requête</a>
									<a href="exercices/14/14-1-query.txt" class="button" style="margin-right:15px;" target="blank">XQuery-1 : sortie</a></p>
									<p>
									<a href="exercices/14/14-2.xq" style="margin-right:15px;" class="button" target="blank">XQuery-2 : requête</a>
									<a href="exercices/14/14-2-query.txt" style="margin-right:15px;" class="button" target="blank">XQuery-2 : sortie</a></p>
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

