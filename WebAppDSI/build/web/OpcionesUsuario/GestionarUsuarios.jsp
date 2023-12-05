<%-- 
    Document   : GestionarUsuarios
    Created on : 1 dic 2023, 14:01:53
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar usuarios</title>
    </head>
    <body>
        <h1>Gestión de Usuarios</h1>
        <h2>Listado de Usuarios</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroUsuarios">Agregar usuario</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdUsuario</th>
                    <th>FkEmpleado</th>
                    <th>FkRol</th>
                    <th>Usuario</th>
                    <th>Clave</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaUsuarios}" var="item">
                    <tr>
                        <td><c:out value="${item.idUsuario}" /></td>
                        <td><c:out value="${item.fkEmpleado}" /></td>
                        <td><c:out value="${item.fkRol}" /></td>
                        <td><c:out value="${item.usuario}" /></td>
                        <td><c:out value="${item.clave}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarUsuario.jsp">
                                <input type="hidden" name="idUsuario" value="${item.idUsuario}" />
                                <input type="hidden" name="fkEmpleado" value="${item.fkEmpleado}" />
                                <input type="hidden" name="fkRol" value="${item.fkRol}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="clave" value="${item.clave}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarUsuario.jsp">
                                <input type="hidden" name="idUsuario" value="${item.idUsuario}" />
                                <input type="hidden" name="fkEmpleado" value="${item.fkEmpleado}" />
                                <input type="hidden" name="fkRol" value="${item.fkRol}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="clave" value="${item.clave}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>