<%-- 
    Document   : RegistroPersonas
    Created on : 1 dic 2023, 11:21:05
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de personas</title>
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
        <div><h1>Registrar Personas</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroPersonas" id="FormRegistroPersonas">
            <div id="ResultRegPersonas"></div>
            <div><label>Nombres:</label></div>
            <div><input type="text" name="nombres" id="nombres"></div><br>
            <div><label>Apellidos</label></div>
            <div><input type="text" name="apellidos" id="apellidos"></div><br>
            <div><label>Sexo</label></div>
            <div><input type="text" name="sexo" id="sexo"></div><br>
            <div><input type="submit" value="Agregar"></div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarPersonas">Regresar</a>
            </div>
        </form>
    </body>
</html>
