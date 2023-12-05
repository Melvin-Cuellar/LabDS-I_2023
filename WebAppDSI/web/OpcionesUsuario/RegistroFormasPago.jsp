<%-- 
    Document   : RegistroFormasPago
    Created on : 14 oct 2023, 04:21:09
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de formas de pago</title>
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>
        <div><h1>Registrar Formas de pago</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroFormasPago" id="FormRegistroFormasPago">
            <div id="ResultRegFormasPago"></div>
            <div><label>Forma de pago</label></div>
            <div><input type="text" name="formaPago" id="formaPago"></div><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar la forma de pago?')" /><br><br>
            <div>
                <a href="/WebAppDSI/?accion=GestionarFormasPago">Regresar</a>
            </div>
        </form>
    </body>
</html>
