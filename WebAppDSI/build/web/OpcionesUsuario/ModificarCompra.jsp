<%-- 
    Document   : ModificarCompra
    Created on : 1 dic 2023, 14:07:39
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Compra</title>
    </head>
    <body>   
        <h1>Modificar Compra</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarCompra">
            <div>
                <label>Id Compra</label>
                <input type="text" name="idCompra" id="idCompra" value="${param.idCompra}" readonly /><br>
                <label>Fk Proveedor</label>
                <input type="text" name="fkProveedor" id="fkProveedor" value="${param.fkProveedor}" required /><br>
                <label>FkUsuario</label>
                <input type="text" name="fkUsuario" id="fkUsuario" value="${param.fkUsuario}" required /><br><br>
                <label>Fecha de compra</label>
                <input type="text" name="fechaCompra" id="fechaCompra" value="${param.fechaCompra}" required /><br><br>       
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la compra?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarCompras">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
