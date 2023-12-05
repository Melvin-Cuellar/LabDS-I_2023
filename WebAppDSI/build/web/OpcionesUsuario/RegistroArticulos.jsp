<%-- 
    Document   : RegistroArticulos
    Created on : 14 oct 2023, 03:57:32
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de artículos</title>
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
        <div><h1>Registrar Artículos</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroArticulos" id="FormRegistroArticulos">
            <div id="ResultRegArticulos">
                <label>NombreArticulo:</label>
                <input type="text" name="nombreArticulo" id="nombreArticulo" required><br>
                <label>Descripción</label>
                <input type="text" name="descripcion" id="descripcion" required><br><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el artículo?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarArticulos">Regresar</a>
            </div>
        </form>
    </body>
</html>
