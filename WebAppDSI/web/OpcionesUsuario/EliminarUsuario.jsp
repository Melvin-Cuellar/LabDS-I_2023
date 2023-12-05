<%-- 
    Document   : EliminarUsuarios
    Created on : 1 dic 2023, 14:04:46
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Usuario</title>
    </head>
    <body>
        <h1>Eliminar usuario</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarUsuario">
            <div>
                <label>Id Usuario ${param.idUsuario}</label><br>
                <label>Fk Empleado ${param.fkEmpleado}</label><br>
                <label>Fk Rol ${param.fkRol}</label>
                <label>Usuario ${param.usuario}</label><br>
                <label>Clave <input type="password" value="${param.clave}"/></label><br> 
                <input type="hidden" name="idUsuario" id="idUsuario" value="${param.idUsuario}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el usuario?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarUsuarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
