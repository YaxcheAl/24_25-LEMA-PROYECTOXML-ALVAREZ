<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="totalProductos" select="count($XMLTienda//disco)"/>
	<xsl:variable name="XMLTienda" select="document('tienda_discos.xml')"/>
	<xsl:template match="/">
		<html lang="es">			 
			<head>
				<title>All Our Records</title>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
				<link rel="stylesheet" href="../assets/css/main.css" />
			</head>
			<body>
				<header id="header">
					<div class="inner">
						<a href="../index.html" class="logo">MusicLand</a>
						<nav id="nav">
							<a href="../index.html">Principal Page</a>
							<a href="tienda_discos1.xml">Special Editions</a>
							<a href="tienda_discos2.xml">All Our Records</a>
							<a href="tienda_discos3.xml">Metal Records</a>
							<a href="contacto.html">Contact</a>
						</nav>
					</div>
				</header>
				<a href="#menu" class="navPanelToggle">
					<span class="fa fa-bars"></span>
				</a>
				
				<section id="main">
					<div class="inner">
						<header>
							<h1>All Our Records</h1>
						</header>
						<xsl:for-each select="$XMLTienda//disco">
							<div class="box">
								<a target="_blank"><xsl:attribute name="href">../images/<xsl:value-of select="caratula"/></xsl:attribute><img alt="imagen-producto">
										<xsl:attribute name="src">../images/<xsl:value-of select="caratula"/></xsl:attribute>
										<xsl:attribute name="width">280</xsl:attribute><xsl:attribute name="height">280</xsl:attribute>
									</img></a>
								<h3><xsl:value-of select="nombre_disco"/></h3>
								<strong>Songs</strong>
								<ul>
									<xsl:for-each select="canciones/cancion/titulo">
										<li><xsl:value-of select="."/></li>
									</xsl:for-each>
								</ul>
								<span>Format: <xsl:value-of select="@cod_form"/></span><br/>
								<span><xsl:value-of select="precio + (precio * //informacion_tienda/iva div 100)"/>€</span>
								<a class="button fit" target="_blank"><xsl:attribute name="href">https://<xsl:value-of select="link_compra"/></xsl:attribute>More Info</a>
							</div>
						</xsl:for-each>
						<div class="total-productos">
							Total records: <xsl:value-of select="$totalProductos"/>
						</div>
					</div>
				</section>
				
				<footer id="footer">
					<div class="inner">
						<div class="copyright">
							&#169; 2025 Yaxche, Anahi And Fabricia
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