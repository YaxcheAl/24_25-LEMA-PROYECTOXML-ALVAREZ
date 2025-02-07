<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:variable name="totalProductos" select="count($XMLTienda//disco[@cod_gen='G01' or @cod_gen='G03' or @cod_gen='G05' or @cod_gen='G07'])"/>
    <xsl:variable name="XMLTienda" select="document('tienda_discos.xml')"/>
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
                            <h1>Edicion Especial</h1>
                        </header>
                        <div class="table-wrapper">
                            <table>
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Name</th>
                                        <th>Songs</th>
                                        <th>Format</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <xsl:for-each select="$XMLTienda//disco[@cod_gen='G01' or @cod_gen='G03' or @cod_gen='G05' or @cod_gen='G07' ]">
                                        <tr>
                                            <td>
                                                <a target="_blank"><xsl:attribute name="href">../images/<xsl:value-of select="caratula"/></xsl:attribute><img alt="imagen-producto">
                                                        <xsl:attribute name="src">../images/<xsl:value-of select="caratula"/></xsl:attribute>
                                                        <xsl:attribute name="width">100</xsl:attribute><xsl:attribute name="height">100</xsl:attribute>
                                                    </img></a>
                                            </td>
                                            
                                            <td><xsl:value-of select="nombre_disco"/></td>
                                            <td>
                                                <ul>
                                                    <xsl:for-each select="canciones/cancion/titulo">
                                                        <li><xsl:value-of select="."/></li>
                                                    </xsl:for-each>
                                                </ul>
                                            </td>
                                            <td><a target="_blank"><xsl:attribute name="href">https://<xsl:value-of select="link_compra"/></xsl:attribute>More Info</a></td>
                                            <td><xsl:value-of select="precio + (precio * //informacion_tienda/iva div 100)"/>€</td>
                                        </tr>
                                    </xsl:for-each>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="4">Total records: <xsl:value-of select="$totalProductos"/></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </section>
                <!-- Footer -->
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
                            Datos de la empresa o asosciación
                        </div>
                    </div>
                </footer>
                
                <!-- Scripts -->
                <script src="../assets/js/jquery.min.js"></script>
                <script src="../assets/js/skel.min.js"></script>
                <script src="../assets/js/util.js"></script>
                <script src="../assets/js/main.js"></script>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>