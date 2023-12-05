<%-- 
    Document   : GestionarVentas
    Created on : 1 dic 2023, 14:02:03
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar ventas</title>
    </head>
    <body>
        <h1>Gestión de Ventas</h1>
        <h2>Listado de Ventas</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroVentas">Agregar ventas</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdVenta</th>
                    <th>FkCliente</th>
                    <th>FkUsuario</th>
                    <th>FechaVenta</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaVentas}" var="item">
                    <tr>
                        <td><c:out value="${item.idVenta}" /></td>
                        <td><c:out value="${item.fkCliente}" /></td>
                        <td><c:out value="${item.fkUsuario}" /></td>
                        <td><c:out value="${item.fechaVenta}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarVenta.jsp">
                                <input type="hidden" name="idVenta" value="${item.idVenta}" />
                                <input type="hidden" name="fkCliente" value="${item.fkCliente}" />
                                <input type="hidden" name="fkUsuario" value="${item.fkUsuario}" />
                                <input type="hidden" name="fechaVenta" value="${item.fechaVenta}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarVenta.jsp">
                                <input type="hidden" name="idVenta" value="${item.idVenta}" />
                                <input type="hidden" name="fkCliente" value="${item.fkCliente}" />
                                <input type="hidden" name="fkUsuario" value="${item.fkUsuario}" />
                                <input type="hidden" name="fechaVenta" value="${item.fechaVenta}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
