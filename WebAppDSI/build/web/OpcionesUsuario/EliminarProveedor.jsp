<%-- 
    Document   : EliminarProveedores
    Created on : 1 dic 2023, 14:04:28
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Proveedor</title>
    </head>
    <body>
        <h1>Eliminar proveedor</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarProveedor">
            <div>
                <label>Id Proveedor: ${param.idProveedor}</label><br>
                <label>Nombre proveedor ${param.nombreProveedor}</label><br>
                <label>Id Dirección: ${param.fkDireccion}</label>
                <label>Teléfono: ${param.telefono}</label><br>
                <label>Correo: ${param.correo}</label><br> 
                <input type="hidden" name="idProveedor" id="idProveedor" value="${param.idProveedor}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el proveedor?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarProveedores">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
