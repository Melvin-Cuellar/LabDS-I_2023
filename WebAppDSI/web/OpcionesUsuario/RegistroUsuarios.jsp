<%-- 
    Document   : RegistroUsuarios
    Created on : 14 oct 2023, 04:11:57
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de usuarios</title>
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
        <div><h1>Registrar Usuarios</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroUsuarios" id="FormRegistroUsuarios">
            <div id="ResultRegUsuarios"></div>
            <div><label>FkEmpleado</label></div>
            <div><input type="text" name="fkEmpleado" id="fkEmpleado"></div><br>
            <div><label>FkRol</label></div>
            <div><input type="text" name="fkRol" id="fkRol"></div><br>
            <div><label>Usuairo</label></div>
            <div><input type="text" name="usuairo" id="usuairo"></div><br>
            <div><label>Clave</label></div>
            <div><input type="password" name="clave" id="clave"></div><br>
            <div><input type="submit" value="Agregar"></div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarArticulos">Regresar</a>
            </div>
        </form>
    </body>
</html>
