<%-- 
    Document   : RegistroVentas
    Created on : 14 oct 2023, 04:15:07
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de ventas</title>
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
        <div><h1>Registrar Ventas</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroVentas" id="FormRegistroVentas">
            <div id="ResultRegVentas"></div>
            <div><label>FkCliente</label></div>
            <div><input type="text" name="fkCliente" id="fkCliente"></div><br>
            <div><label>FkUsuario</label></div>
            <div><input type="text" name="fkUsuario" id="fkUsuario"></div><br>
            <div><label>Fecha de ventas</label></div>
            <div><input type="date" name="fechaVenta" id="fechaVenta"></div><br>
            <div><input type="submit" value="Agregar"></div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarVentas">Regresar</a>
            </div>
        </form>
    </body>
</html>
