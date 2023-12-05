<%-- 
    Document   : GestionarPersonas
    Created on : 1 dic 2023, 13:59:45
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar personas</title>
    </head>
    <body>
        <h1>Gestión de Personas</h1>
        <h2>Listado de Personas</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroPersonas">Agregar persona</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdPersona</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Sexo</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaPersonas}" var="item">
                    <tr>
                        <td><c:out value="${item.idPersona}" /></td>
                        <td><c:out value="${item.nombres}" /></td>
                        <td><c:out value="${item.apellidos}" /></td>
                        <td><c:out value="${item.sexo}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarPersona.jsp">
                                <input type="hidden" name="idPersona" value="${item.idPersona}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="apellidos" value="${item.apellidos}" />
                                <input type="hidden" name="sexo" value="${item.sexo}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarPersona.jsp">
                                <input type="hidden" name="idPersona" value="${item.idPersona}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="apellidos" value="${item.apellidos}" />
                                <input type="hidden" name="sexo" value="${item.sexo}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>