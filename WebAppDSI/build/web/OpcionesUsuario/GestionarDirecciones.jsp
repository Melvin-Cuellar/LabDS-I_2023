<%-- 
    Document   : GestionarDirecciones
    Created on : 1 dic 2023, 13:59:13
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar direcciones</title>
    </head>
    <body>
        <h1>Gestión de Direcciones</h1>
        <h2>Listado de Direcciones</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroDirecciones">Agregar direccion</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdDireccion</th>
                    <th>DescripciónDirección</th>
                    <th>FkDistrito</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaDirecciones}" var="item">
                    <tr>
                        <td><c:out value="${item.idDireccion}" /></td>
                        <td><c:out value="${item.descripcionDireccion}" /></td>
                        <td><c:out value="${item.fkDistrito}" /></td>
                        <td>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarDireccion.jsp">
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="hidden" name="descripcionDireccion" value="${item.descripcionDireccion}" />
                                <input type="hidden" name="fkDistrito" value="${item.fkDistrito}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarDireccion.jsp">
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="hidden" name="descripcionDireccion" value="${item.descripcionDireccion}" />
                                <input type="hidden" name="fkDistrito" value="${item.fkDistrito}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
