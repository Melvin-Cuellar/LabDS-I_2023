<%-- 
    Document   : ModificarUsuairo
    Created on : 1 dic 2023, 14:08:38
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Usuario</title>
    </head>
    <body>   
        <h1>Modificar Usuario</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarUsuario">
            <div>
                <label>Id Usuario</label>
                <input type="text" name="idUsuario" id="idUsuario" value="${param.idUsuario}" readonly /><br>
                <label>Fk Empleado:</label>
                <input type="text" name="fkEmpleado:" id="fkEmpleado:" value="${param.fkEmpleado}" required /><br><br>
                <label>Fk Rol</label>
                <input type="text" name="fkRol" id="fkRol" value="${param.fkRol}" required /><br>
                <label>Usuario</label>
                <input type="text" name="usuario" id="usuario" value="${param.usuario}" required /><br><br>
                <label>Clave</label>
                <input type="password" name="clave" id="clave" value="${param.clave}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el Usuario?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarUsuarios">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
