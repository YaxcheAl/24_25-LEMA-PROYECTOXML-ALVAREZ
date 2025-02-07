<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="XMLTienda" select="document('tienda_discos2.xml')"/>
	<xsl:template match="/">
		<html lang="es">			 
			<head>
				<title>UD6: Proyecto dirigido a la validación, formateo y transformación de documentos XML</title>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
				<link rel="stylesheet" href="../assets/css/main.css" />
			</head>
			<body>
				<header id="header">
					<div class="inner">
						<a href="../index.html" class="logo">Nombre de la web</a>
						<nav id="nav">
							<a href="../index.html">Página Principal</a>
							<a href="tienda_discos1.xml">Ediciones Especiales</a>
							<a href="tienda_discos2.xml">Todos Nuestros Discos</a>
							<a href="tienda_discos3.xml">Discos De Metal</a>
							<a href="contacto.html">Contacto</a>
						</nav>
					</div>
				</header>
				<a href="#menu" class="navPanelToggle">
					<span class="fa fa-bars"></span>
				</a>
				
				<section id="main">
					<div class="inner">
						<header>
							<h1>Todos Nuestros Discos</h1>
						</header>
						<xsl:for-each select="$XMLTienda//disco">
							<div class="box">
								<a target="_blank"><xsl:attribute name="href">../images/<xsl:value-of select="caratula"/></xsl:attribute><img alt="imagen-producto">
										<xsl:attribute name="src">../images/<xsl:value-of select="caratula"/></xsl:attribute>
										<xsl:attribute name="width">280</xsl:attribute><xsl:attribute name="height">280</xsl:attribute>
									</img></a>
								<h3><xsl:value-of select="nombre_disco"/></h3>
								<strong>Canciones</strong>
								<ul>
									<xsl:for-each select="canciones/cancion/titulo">
										<li><xsl:value-of select="."/></li>
									</xsl:for-each>
								</ul>
								<span>Formato: <xsl:value-of select="@cod_form"/></span>
								<a href="#" class="button fit">Más información</a>
							</div>
						</xsl:for-each>
					</div>
				</section>
				
				<footer id="footer">
					<div class="inner">
						<div class="copyright">
							&#169; 202X Integrantes del grupo
							<ul class="icons">
								<li>
									<a href="#" class="icon fa-twitter">
										<span class="label">Twitter</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-facebook">
										<span class="label">Facebook</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-instagram">
										<span class="label">Instagram</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-github">
										<span class="label">Github</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-dribbble">
										<span class="label">Dribbble</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-tumblr">
										<span class="label">Tumblr</span>
									</a>
								</li>
							</ul>
							Datos de la empresa o asosciación
						</div>
					</div>
				</footer>
				<script src="../assets/js/jquery.min.js"></script>
				<script src="../assets/js/skel.min.js"></script>
				<script src="../assets/js/util.js"></script>
				<script src="../assets/js/main.js"></script>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>