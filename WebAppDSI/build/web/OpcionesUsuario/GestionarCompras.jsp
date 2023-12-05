<%-- 
    Document   : GestionarCompras
    Created on : 1 dic 2023, 13:58:54
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar compras</title>
    </head>
    <body>
        <h1>Gestión de Compras</h1>
        <h2>Listado de Compras</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroCompras">Agregar compra</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdCompra</th>
                    <th>FkProveedor</th>
                    <th>FkUsuario</th>
                    <th>FechaCompra</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCompras}" var="item">
                    <tr>
                        <td><c:out value="${item.idCompra}" /></td>
                        <td><c:out value="${item.fkProveedor}" /></td>
                        <td><c:out value="${item.fkUsuario}" /></td>
                        <td><c:out value="${item.fechaCompra}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarCompra.jsp">
                                <input type="hidden" name="idCompra" value="${item.idCompra}" />
                                <input type="hidden" name="fkProveedor" value="${item.fkProveedor}" />
                                <input type="hidden" name="fkUsuario" value="${item.fkUsuario}" />
                                <input type="hidden" name="fechaCompra" value="${item.fechaCompra}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarCompra.jsp">
                                <input type="hidden" name="idCompra" value="${item.idCompra}" />
                                <input type="hidden" name="fkProveedor" value="${item.fkProveedor}" />
                                <input type="hidden" name="fkUsuario" value="${item.fkUsuario}" />
                                <input type="hidden" name="fechaCompra" value="${item.fechaCompra}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>