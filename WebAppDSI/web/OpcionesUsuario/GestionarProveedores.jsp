<%-- 
    Document   : GestionarProveedores
    Created on : 1 dic 2023, 13:59:56
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar proveedores</title>
    </head>
    <body>
        <h1>Gestión de Proveedores</h1>
        <h2>Listado de Proveedores</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroProveedores">Agregar proveedor</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdProveedor</th>
                    <th>NombreProveedor</th>
                    <th>FkDireccion</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProveedores}" var="item">
                    <tr>
                        <td><c:out value="${item.idProveedor}" /></td>
                        <td><c:out value="${item.nombreProveedor}" /></td>
                        <td><c:out value="${item.fkDireccion}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.correo}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarProveedor.jsp">
                                <input type="hidden" name="idProveedor" value="${item.idProveedor}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="hidden" name="fkDireccion" value="${item.fkDireccion}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarProveedor.jsp">
                                <input type="hidden" name="idProveedor" value="${item.idProveedor}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="hidden" name="fkDireccion" value="${item.fkDireccion}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
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