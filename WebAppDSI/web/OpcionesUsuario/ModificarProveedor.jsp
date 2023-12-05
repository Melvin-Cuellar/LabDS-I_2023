<%-- 
    Document   : ModificarProveedor
    Created on : 1 dic 2023, 14:08:29
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Proveedor</title>
    </head>
    <body>   
        <h1>Modificar Proveedor</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarProveedor">
            <div>
                <label>Id Proveedor</label>
                <input type="text" name="idProveedor" id="idProveedor" value="${param.idProveedor}" readonly /><br>
                <label>Nombre del proveedor</label>
                <input type="text" name="nombreProveedor" id="nombreProveedor" value="${param.nombreProveedor}" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="fkDireccion" id="fkDireccion" value="${param.fkDireccion}" required /><br><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br><br>        
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el Proveedor?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarProveedores">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
