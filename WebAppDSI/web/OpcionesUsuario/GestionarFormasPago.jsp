<%-- 
    Document   : GestionarFormasPago
    Created on : 1 dic 2023, 13:59:31
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar formas de pago</title>
    </head>
    <body>
        <h1>Gestión de Formas de pago</h1>
        <h2>Listado de Formas de pago</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroFormasPago">Agregar registro</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>Id Forma de pago</th>
                    <th>Forma de pago</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaFormasPago}" var="item">
                    <tr>
                        <td><c:out value="${item.idFormaPago}" /></td>
                        <td><c:out value="${item.formaPago}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarFormaPago.jsp">
                                <input type="hidden" name="idFormaPago" value="${item.idFormaPago}" />
                                <input type="hidden" name="formaPago" value="${item.formaPago}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarFormaPago.jsp">
                                <input type="hidden" name="idFormaPago" value="${item.idFormaPago}" />
                                <input type="hidden" name="formaPago" value="${item.formaPago}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>

