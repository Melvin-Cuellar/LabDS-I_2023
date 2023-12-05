<%-- 
    Document   : EliminarFromasPago
    Created on : 1 dic 2023, 14:03:42
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Forma de pago</title>
    </head>
    <body>
        <h1>Eliminar forma de pago</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarFormaPago">
            <div>
                <label>Id Forma de pago ${param.idFormaPago}</label><br>
                <label>Forma de pago ${param.formaPago}</label><br>
                <input type="hidden" name="idFormaPago" id="idFormaPago" value="${param.idFormaPago}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la forma de pago?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarFormasPago">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>