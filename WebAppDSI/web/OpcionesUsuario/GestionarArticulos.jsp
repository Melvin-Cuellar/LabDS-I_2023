<%-- 
    Document   : GestionarArticulos
    Created on : 1 dic 2023, 13:58:13
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar articulos</title>
    </head>
    <body>
        <h1>Gestión de Articulos</h1>
        <h2>Listado de Articulos</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroArticulos">Agregar artículo</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdArticulo</th>
                    <th>NombreArticulo</th>
                    <th>Descripcion</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaArticulos}" var="item">
                    <tr>
                        <td><c:out value="${item.idArticulo}" /></td>
                        <td><c:out value="${item.nombreArticulo}" /></td>
                        <td><c:out value="${item.descripcion}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarArticulo.jsp">
                                <input type="hidden" name="idArticulo" value="${item.idArticulo}" />
                                <input type="hidden" name="nombreArticulo" value="${item.nombreArticulo}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarArticulo.jsp">
                                <input type="hidden" name="idArticulo" value="${item.idArticulo}" />
                                <input type="hidden" name="nombreArticulo" value="${item.nombreArticulo}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
