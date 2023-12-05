<%-- 
    Document   : RegistroCompras
    Created on : 14 oct 2023, 04:14:54
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Compras</title>
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
        <div><h1>Registrar compras</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroCompras" id="FormRegistroCompras">
            <div id="ResultRegCompras">
                <label>FkProveedor</label>
                <input type="text" name="fkProveedor" id="fkProveedor"><br>
                <label>FkUsuario</label>
                <input type="text" name="fkUsuario" id="fkUsuario"><br>
                <label>Fecha de compra</label>
                <input type="date" name="fechaCompra" id="fechaCompra"><br>
                <input type="submit" value="Agregar">
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarCompras">Regresar</a>
            </div>
        </form>
    </body>
</html>
