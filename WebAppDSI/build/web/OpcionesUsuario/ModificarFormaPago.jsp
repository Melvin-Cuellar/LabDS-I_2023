<%-- 
    Document   : ModificarFormaPago
    Created on : 1 dic 2023, 14:08:07
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Forma de pago</title>
    </head>
    <body>   
        <h1>Modificar Forma de pago</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarFormaPago">
            <div>
                <label>Id Forma de pago</label>
                <input type="text" name="idFormaPago" id="idFormaPago" value="${param.idFormaPago}" readonly /><br>
                <label>Forma de pago</label>
                <input type="text" name="formaPago" id="formaPago" value="${param.formaPago}" required /><br>       
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la forma de pago?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarFormasPago">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
