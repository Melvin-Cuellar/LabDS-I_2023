<%-- 
    Document   : GestionarClientes
    Created on : 1 dic 2023, 13:58:43
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar clientes</title>
    </head>
    <body>
        <h1>Gestión de Clientes</h1>
        <h2>Listado de Clientes</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroClientes">Agregar cliente</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdCliente</th>
                    <th>FkPersona</th>
                    <th>Correo</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaClientes}" var="item">
                    <tr>
                        <td><c:out value="${item.idCliente}" /></td>
                        <td><c:out value="${item.fkPersona}" /></td>
                        <td><c:out value="${item.correo}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarCliente.jsp">
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="fkPersona" value="${item.fkPersona}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarCliente.jsp">
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="fkPersona" value="${item.fkPersona}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
