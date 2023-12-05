<%-- 
    Document   : ModificarArticulo
    Created on : 1 dic 2023, 14:07:19
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Articulo</title>
    </head>
    <body>   
        <h1>Modificar Articulo</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarArticulo">
            <div>
                <label>Id Articulo</label>
                <input type="text" name="idArticulo" id="idArticulo" value="${param.idArticulo}" readonly /><br>
                <label>Nombre del artículo</label>
                <input type="text" name="nombreArticulo" id="nombreArticulo" value="${param.nombreArticulo}" required /><br>
                <label>Descripción</label>
                <input type="text" name="descripcion" id="descripcion" value="${param.descripcion}" required /><br><br>        
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el artículo?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarArticulos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
