<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
<html>
<head>
    <title>Biblioteca</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        .contenedor {
            width: 80%;
            max-width: 900px;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            margin-top: 30px;
        }

        h2 {
            color: #34495e;
            margin-top: 40px;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 100%;
            background-color: white;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th {
            background-color: #6c8ebf;
            color: white;
            padding: 10px;
        }

        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        a {
            color: #2c7be5;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .ficha {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin: 20px auto;
            width: 100%;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            text-align: left;
        }

        .ficha h3 {
            color: #2c3e50;
            margin-top: 0;
        }

        .ficha p {
            margin: 6px 0;
        }

        strong {
            color: #555;
        }
    </style>
</head>

<body>

<div class="contenedor">

<h1>Biblioteca</h1>

<h2>Índice de Libros</h2>

<table>
    <tr>
        <th>Título</th>
        <th>Autor</th>
    </tr>

    <xsl:for-each select="biblioteca/libro">
        <tr>
            <td>
                <a href="#{@id}">
                    <xsl:value-of select="titulo"/>
                </a>
            </td>
            <td>
                <xsl:value-of select="autor"/>
            </td>
        </tr>
    </xsl:for-each>
</table>

<h2>Detalles de los Libros</h2>

<xsl:for-each select="biblioteca/libro">
    <div class="ficha" id="{@id}">
        <h3><xsl:value-of select="titulo"/></h3>
        <p><strong>Autor:</strong> <xsl:value-of select="autor"/></p>
        <p><strong>Año:</strong> <xsl:value-of select="anio"/></p>
        <p><strong>Páginas:</strong> <xsl:value-of select="paginas"/></p>
        <p><strong>Sinopsis:</strong> <xsl:value-of select="sinopsis"/></p>
    </div>
</xsl:for-each>

</div>

</body>
</html>
</xsl:template>

</xsl:stylesheet>