<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
    <head>
      <title>Lista de Supermercado</title>
      <link rel="stylesheet" text="txt/css" href="css/lista.css"></link>
      <link rel="shortcut icon" type="png" href="recursos/cesta.png"/>
      <a href="https://www.flaticon.es/iconos-gratis/cesta-de-la-compra" title="cesta de la compra iconos">Recurso</a>
    </head>
      <body>
      <nav>
        <div clas="canvas_nav">
          <img class="app_icon" title="canasta" src="recursos/cesta_nav.png"/>
        </div>
        <div>
          <h1>LISTA DE SUPERMERCADO</h1>
          <h2> CANTIDAD DE ELEMENTOS: <xsl:value-of select="lista/cantidad_total"/> ELEMENTOS</h2>
          <h2>COSTO TOTAL: $<xsl:value-of select="lista/total"/></h2>
        </div>
      </nav>
      <div class="container">
        <xsl:for-each select="lista/item">
          <div class="item">
            <div class="canvas">
              <xsl:element name="img">
                <xsl:attribute name="class">imagen_producto</xsl:attribute>
                <xsl:attribute name="title"><xsl:value-of select="@titulo"/></xsl:attribute>
                <xsl:attribute name="src"><xsl:value-of select="producto/@recurso"/></xsl:attribute>
              </xsl:element>
             </div>
             <div class="detalles"> 
              <h3><strong>Producto: </strong> <xsl:value-of select="titulo"/></h3>
              <p><strong>Categoria: </strong><xsl:value-of select="categoria"/></p>
              <p class="descripcion"><strong>Descripcion: </strong><xsl:value-of select="descripcion"/>.</p>
              <p><strong>Marca: </strong><xsl:value-of select="marca"/></p>
              <p><strong>Precio: </strong>$ <xsl:value-of select="precio"/></p>
              <p><strong>Unidades: </strong><xsl:value-of select="unidades"/></p>
              <p><strong>Costo: </strong>$ <xsl:value-of select="costo"/></p>
            </div>
           <div class="canvas">
              <xsl:element name="img">
                <xsl:attribute name="class">imagen_categoria</xsl:attribute>
                <xsl:attribute name="title"><xsl:value-of select="@categoria"/></xsl:attribute>
                <xsl:attribute name="src"><xsl:value-of select="categoria/@recurso"/></xsl:attribute>
              </xsl:element>
           </div>
           <div class="numero">
            <xsl:value-of select="@id"/>
           </div>
          </div>
         </xsl:for-each>
        </div>
      </body>
    </html>
</xsl:template>
</xsl:stylesheet>
