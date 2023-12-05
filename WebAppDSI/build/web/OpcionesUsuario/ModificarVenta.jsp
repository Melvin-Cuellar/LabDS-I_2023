<%-- 
    Document   : ModificarVenta
    Created on : 1 dic 2023, 14:09:00
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Venta</title>
    </head>
    <body>   
        <h1>Modificar Venta</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarVenta">
            <div>
                <label>Id Venta</label>
                <input type="text" name="idVenta" id="idVenta" value="${param.idVenta}" readonly /><br>
                <label>Fk Cliente</label>
                <input type="text" name="fkCliente" id="fkCliente" value="${param.fkCliente}" required /><br>
                <label>FkUsuario</label>
                <input type="text" name="fkUsuario" id="fkUsuario" value="${param.fkUsuario}" required /><br><br>
                <label>Fecha de venta</label>
                <input type="text" name="fechaVenta" id="fechaVenta" value="${param.fechaVenta}" required /><br><br>       
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la venta?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarVentas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
