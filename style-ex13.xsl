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

								<p><h4><strong><xsl:value-of select="page/corps/consigne/partie1/titre"/></strong></h4></p>
								<p><strong><xsl:value-of select="page/corps/consigne/partie1/sous_partie1"/></strong></p>

								<p><xsl:value-of select="page/corps/consigne/partie1/p1"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p2"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p3"/></p>

								<p><strong><xsl:value-of select="page/corps/consigne/partie1/sous_partie2"/></strong></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p4"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p5"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p6"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p7"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie1/p8"/></p>


							<header>
								<h3><strong>Réponse:</strong></h3>
							</header>
								<p><h4><xsl:value-of select="page/corps/consigne/partie1/titre"/></h4></p>
								<p><strong><xsl:value-of select="page/corps/consigne/partie1/sous_partie1"/></strong></p>

 
									<p align="center">
									<a href="exercices/13/P1/13-1.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-1 : script</a>
									<a href="exercices/13/P1/13-1.html" class="button" style="margin-right:15px;" target="blank">XSLT-1 : sortie</a></p>

									<p align="center">
									<a href="exercices/13/P1/13-2-ADJ-NOM.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-2 : patron ADJ - NOM</a>
									<a href="exercices/13/P1/13-2-ADJ-NOM.txt" style="margin-right:15px;" class="button" target="blank">XSLT-2 : sortie ADJ - NOM</a></p>

									<p align="center">
									<a href="exercices/13/P1/13-2-VERB-DET-NOM.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-2 : patron VERB - DET - NOM</a>
									<a href="exercices/13/P1/13-2-V-D-N.txt" style="margin-right:15px;" class="button" target="blank">XSLT-2 : sortie VERB - DET - NOM</a></p>

									<p align="center">
									<a href="exercices/13/P1/13-2-NOM-PREP-NOM-PREP.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-2 : patron NOM - PREP - NOM - PREP</a>
									<a href="exercices/13/P1/13-2-N-P-N-P.txt" style="margin-right:15px;" class="button" target="blank">XSLT-2 : sortie NOM - PREP - NOM - PREP</a></p>


									<p align="center">
									<a href="exercices/13/P1/13-3.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 : patron NOM - ADJ</a>
									<a href="exercices/13/P1/13-3.html" style="margin-right:15px;" class="button" target="blank">XSLT-3 : sortie NOM - ADJ</a></p>

									<p><strong><xsl:value-of select="page/corps/consigne/partie1/sous_partie2"/></strong></p>
									
									<p align="center">
									<a href="exercices/13/P1/13-1.xq" style="margin-right:15px;" class="button" target="blank">XQuery-1 : requête</a>
									<a href="exercices/13/P1/13-1-xq.txt" style="margin-right:15px;" class="button" target="blank">XQuery-1 : sortie</a></p>

									<p align="center">
									<a href="exercices/13/P1/13-2.xq" style="margin-right:15px;" class="button" target="blank">XQuery-2 : requête</a>
									<a href="exercices/13/P1/13-2-xq.txt" class="button" style="margin-right:15px;" target="blank">XQuery-2 : sortie</a></p>

									<p align="center">
									<a href="exercices/13/P1/13-3.xq" style="margin-right:15px;" class="button" target="blank">XQuery-3 : requête</a>
									<a href="exercices/13/P1/13-3-xq.txt" class="button" style="margin-right:15px;" target="blank">XQuery-3 : sortie</a></p>

									<p align="center"><a href="exercices/13/P1/13-4-n-a.xquery" style="margin-right:15px;" class="button" target="blank">XQuery-4 : requête</a>
									<a href="exercices/13/P1/13-4-xq.txt" class="button" style="margin-right:15px;" target="blank">XQuery-4 : sortie</a></p>

									<p align="center">
									<a href="exercices/13/P1/13-5-n-p-n.xquery" style="margin-right:15px;" class="button" target="blank">XQuery-5 : requête</a>
									<a href="exercices/13/P1/13-5-xq.txt" class="button" style="margin-right:15px;" target="blank">XQuery-5 : sortie</a></p>



								<section>
								</section>

								<p><h4><strong><xsl:value-of select="page/corps/consigne/partie2/titre"/></strong></h4></p>
								<p><strong><xsl:value-of select="page/corps/consigne/partie2/sous_partie1"/></strong></p>

								<p><xsl:value-of select="page/corps/consigne/partie2/p1"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p2"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p3"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p4"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p5"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p6"/></p>

								<p><strong><xsl:value-of select="page/corps/consigne/partie2/sous_partie2"/></strong></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p7"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p8"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p9"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p10"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p11"/></p>
								<p><xsl:value-of select="page/corps/consigne/partie2/p12"/></p>	
								<p><xsl:value-of select="page/corps/consigne/partie2/p13"/></p>
							</section>
							<section>
								<h3><strong></strong></h3>
							</section>

						<section>
							<header>
								<h3><strong>Réponse:</strong></h3>
							</header>

								
									<p><h4><xsl:value-of select="page/corps/consigne/partie2/titre"/></h4></p>
									<p>* J'ai utilisé le fichier fourni sur iCampus en tant qu'exemple pour faire l'extraction, soit "TALISMANE-3208".</p>
									<p><strong><xsl:value-of select="page/corps/consigne/partie2/sous_partie1"/></strong></p>

									<p align="center">
									<a href="exercices/13/P2/1.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-1 : script</a>
									<a href="exercices/13/P2/13-1.html" style="margin-right:15px;" class="button" target="blank">XSLT-1 : sortie</a></p>

									<p align="center">
									<a href="exercices/13/P2/2.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-2 : script</a>
									<a href="exercices/13/P2/13-2.html" style="margin-right:15px;" class="button" target="blank">XSLT-2 : sortie</a></p>

									<p align="center">
									<a href="exercices/13/P2/3-titre-ADJ-NOM.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 titre: patron ADJ - NOM</a>
                                    <a href="exercices/13/P2/13-3-titre-AN.txt" style="margin-right:15px;" class="button" target="blank">XSLT-3 titre: sortie ADJ - NOM</a></p>

									<p><a href="exercices/13/P2/3-des-ADJ-NOM.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 description: patron ADJ - NOM</a>
                                    <a href="exercices/13/P2/13-3-des-AN.txt" style="margin-right:15px;" class="button" target="blank">XSLT-3 description: sortie ADJ - NOM</a></p>

									<p align="center">
									<a href="exercices/13/P2/3-titre-VERB-DET-NOM.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 titre: patron VERB - DET - NOM</a>
                                    <a href="exercices/13/P2/13-3-titre-VDN.txt" style="margin-right:15px;" class="button" target="blank">XSLT-3 titre: sortie VERB - DET - NOM</a></p>
									<p><a href="exercices/13/P2/3-des-VERB-DET-NOM.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 description: patron VERB - DET - NOM</a>
                                    <a href="exercices/13/P2/13-3-des-VDN.txt" style="margin-right:15px;" class="button" target="blank">XSLT-3 description: sortie VERB - DET - NOM</a></p>									
									<p align="center">
									<a href="exercices/13/P2/3-titre-VERB-DET-ADJ-NOM.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 titre: patron VERB - DET - ADJ - NOM</a>
                                    <a href="exercices/13/P2/13-3-titre-VDAN.txt" style="margin-right:15px;" class="button" target="blank">XSLT-3 titre: sortie VERB - DET - ADJ - NOM</a></p>
									<p><a href="exercices/13/P2/3-des-VERB-DET-ADJ-NOM.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-3 description: patron VERB - DET - ADJ - NOM</a>
                                    <a href="exercices/13/P2/13-3-des-VDAN.txt" style="margin-right:15px;" class="button" target="blank">XSLT-3 description: sortie VERB - DET - ADJ - NOM</a></p>	

									<p align="center">
									<a href="exercices/13/P2/4-titre.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-4 titre: script</a>
									<a href="exercices/13/P2/13-4-titre.html" style="margin-right:15px;" class="button" target="blank">XSLT-4 titre: sortie</a></p>
									
									<p align="center">
									<a href="exercices/13/P2/4-description.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-4 description: script</a>
									<a href="exercices/13/P2/13-4-des.html" style="margin-right:15px;" class="button" target="blank">XSLT-4 description: sortie</a></p>

									<p align="center">
									<a href="exercices/13/P2/5-titre.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-5 titre: script</a>
									<a href="exercices/13/P2/5-titre.txt" style="margin-right:15px;" class="button" target="blank">XSLT-5 titre: sortie</a>
									<a href="exercices/13/P2/5-titre-trier.txt" style="margin-right:15px;" class="button" target="blank">XSLT-5 titre: après le tri</a>
									</p>
									
									<p align="center">
									<a href="exercices/13/P2/5-description.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-5 description: script</a>
									<a href="exercices/13/P2/5-des.txt" style="margin-right:15px;" class="button" target="blank">XSLT-5 description: sortie</a><a href="exercices/13/P2/5-des-trier.txt" style="margin-right:15px;" class="button" target="blank">XSLT-5 description: après le tri</a></p>


									<p align="center">
									<a href="exercices/13/P2/6-titre.txt" style="margin-right:15px;" class="button" target="blank">XSLT-6 titre: script</a>
									<a href="exercices/13/P2/6-titre.txt" style="margin-right:15px;" class="button" target="blank">XSLT-6 titre: sortie</a>
									<a href="exercices/13/P2/6-titre-trier.txt" style="margin-right:15px;" class="button" target="blank">XSLT-6 titre: après le tri</a></p>


									<p align="center">
									<a href="exercices/13/P2/6-description.xsl" style="margin-right:15px;" class="button" target="blank">XSLT-6 description: script</a>
									<a href="exercices/13/P2/6-des.txt" style="margin-right:15px;" class="button" target="blank">XSLT-6 description: sortie</a><a href="exercices/13/P2/6-des-trier.txt" style="margin-right:15px;" class="button" target="blank">XSLT-6 description: après le tri</a></p>
 									
 									<p><strong><xsl:value-of select="page/corps/consigne/partie2/sous_partie2"/></strong></p>

 									<p align="center">
									<a href="exercices/13/P2/13-1-tal.xq" style="margin-right:15px;" class="button" target="blank">XQuery-1 : requête</a>
									<a href="exercices/13/P2/xq-13-1.txt" style="margin-right:15px;" class="button" target="blank">XQuery-1 : sortie</a></p>

 									<p align="center">
									<a href="exercices/13/P2/13-2-tal.xq" style="margin-right:15px;" class="button" target="blank">XQuery-2 : requête</a>
									<a href="exercices/13/P2/xq-13-2.txt" style="margin-right:15px;" class="button" target="blank">XQuery-2 : sortie</a></p>

 									<p align="center">
									<a href="exercices/13/P2/13-3-tal.xq" style="margin-right:15px;" class="button" target="blank">XQuery-3 : requête</a>
									<a href="exercices/13/P2/xq-13-3.txt" style="margin-right:15px;" class="button" target="blank">XQuery-3 : sortie</a></p>

 									<p align="center">
									<a href="exercices/13/P2/13-4-tal.xq" style="margin-right:15px;" class="button" target="blank">XQuery-4 : requête</a>
									<a href="exercices/13/P2/xq-13-4.txt" style="margin-right:15px;" class="button" target="blank">XQuery-4 : sortie</a></p>


									<p align="center">
									<a href="exercices/13/P2/13-5-tal-n-a.xquery" style="margin-right:15px;" class="button" target="blank">XQuery-5 : requête NOM - ADJ</a>
									<a href="exercices/13/P2/xq-13-5-n-a.txt" style="margin-right:15px;" class="button" target="blank">XQuery-5 : sortie NOM - ADJ</a></p>


									<p align="center">
									<a href="exercices/13/P2/13-5-tal-v-d-n.xquery" style="margin-right:15px;" class="button" target="blank">XQuery-5 : requête VERB - DET - NOM</a>
									<a href="exercices/13/P2/xq-13-5-v-d-n.txt" style="margin-right:15px;" class="button" target="blank">XQuery-5 : sortie VERB - DET - NOM</a></p>

									<p align="center">
									<a href="exercices/13/P2/13-5-tal-n-p-n-p.xquery" style="margin-right:15px;" class="button" target="blank">XQuery-5 : requête NOM - PREP - NOM - PREP</a>
									<a href="exercices/13/P2/xq-13-5-n-p-n-p.txt" style="margin-right:15px;" class="button" target="blank">XQuery-5 : sortie NOM - PREP - NOM - PREP</a></p>

									<p align="center">
									<a href="exercices/13/P2/13-6-tal.xq" style="margin-right:15px;" class="button" target="blank">XQuery-6 : requête</a>
									<a href="exercices/13/P2/xq-13-6.txt" style="margin-right:15px;" class="button" target="blank">XQuery-6 : sortie</a></p>	
																	
									<p align="center">
									<a href="exercices/13/P2/13-7-tal.xq" style="margin-right:15px;" class="button" target="blank">XQuery-7 : requête</a>
									<a href="exercices/13/P2/xq-13-7.txt" style="margin-right:15px;" class="button" target="blank">XQuery-7 : sortie</a></p>


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

