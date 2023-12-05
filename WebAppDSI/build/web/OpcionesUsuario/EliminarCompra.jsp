<%-- 
    Document   : EliminarCompras
    Created on : 1 dic 2023, 14:03:11
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Compra</title>
    </head>
    <body>
        <h1>Eliminar compra</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarCompra">
            <div>
                <label>Id Compra ${param.idCompra}</label><br>
                <label>Fk Proveedor ${param.fkProveedor}</label><br>
                <label>Fk Usuario ${param.fkUsuario}</label><br>
                <label>Fecha compra ${param.fechaCompra}</label><br> 
                <input type="hidden" name="idCompra" id="idCompra" value="${param.idCompra}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la compra?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarCompras">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>