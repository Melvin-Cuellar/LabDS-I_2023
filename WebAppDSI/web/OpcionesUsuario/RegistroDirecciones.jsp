<%-- 
    Document   : RegistroDirecciones
    Created on : 1 dic 2023, 11:28:50
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de direcciones</title>
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
        <div><h1>Registrar Direcciones</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroDirecciones" id="FormRegistroDirecciones">
            <div id="ResultRegDirecciones">
                <label>Descripción de dirección</label>
                <input type="text" name="descripcionDireccion" id="descripcionDireccion"><br>
                <label>FkDistrito</label>
                <input type="text" name="fkDistrito" id="fkDistrito"><br>
                <input type="submit" value="Agregar">
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarDirecciones">Regresar</a>
            </div>
        </form>
        <br>
    </body>
</html>
