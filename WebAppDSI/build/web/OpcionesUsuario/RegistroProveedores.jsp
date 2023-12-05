<%-- 
    Document   : RegistroProveedores
    Created on : 14 oct 2023, 04:11:07
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de proveedores</title>
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>
        <div><h1>Registrar Proveedores</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroProveedores" id="FormRegistroProveedores">
            <div id="ResultRegProveedores"></div>
            <div><label>Proveedor</label></div>
            <div><input type="text" name="nombreProveedor" id="nombreProveedor"></div><br>
            <div><label>FkDireccion</label></div>
            <div><input type="text" name="fkDireccion" id="fkDireccion"></div><br>
            <div><label>Telefono</label></div>
            <div><input type="text" name="telefono" id="telefono"></div><br>
            <div><label>Correo</label></div>
            <div><input type="email" name="correo" id="correo"></div><br>
            <div><input type="submit" value="Agregar"></div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarProveedores">Regresar</a>
            </div>
        </form>
    </body>
</html>
