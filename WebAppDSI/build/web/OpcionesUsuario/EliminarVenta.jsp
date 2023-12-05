<%-- 
    Document   : EliminarVentas
    Created on : 1 dic 2023, 14:05:02
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Venta</title>
    </head>
    <body>
        <h1>Eliminar venta</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarVenta">
            <div>
                <label>Id Venta ${param.idVenta}</label><br>
                <label>Fk Cliente ${param.fkCliente}</label><br>
                <label>Fk Usuario ${param.fkUsuario}</label><br>
                <label>Fecha Venta ${param.fechaVenta}</label><br> 
                <input type="hidden" name="idVenta" id="idVenta" value="${param.idVenta}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la venta?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>