<%-- 
    Document   : EliminarArticulos
    Created on : 1 dic 2023, 14:02:32
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Artículo</title>
    </head>
    <body>
        <h1>Eliminar Artículo</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarArticulo">
            <div>
                <label>Id Articulo ${param.idArticulo}</label><br>
                <label>Nombre del articulo ${param.nombreArticulo}</label><br>
                <label>Descripcion ${param.descripcion}</label><br>
                <input type="hidden" name="idArticulo" id="idArticulo" value="${param.idArticulo}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el artículo?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarArticulos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
