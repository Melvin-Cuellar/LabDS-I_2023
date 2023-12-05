<%-- 
    Document   : EliminarDirecciones
    Created on : 1 dic 2023, 14:03:24
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Direccion</title>
    </head>
    <body>
        <h1>Eliminar direccion</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarDireccion">
            <div>
                <label>Id Direccion ${param.idDireccion}</label><br>
                <label>Descripción de la dirección ${param.descripcionDireccion}</label><br> 
                <label>Fk Distrito ${param.fkDistrito}</label><br>
                <input type="hidden" name="idDireccion" id="idDireccion" value="${param.idDireccion}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la dirección?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarDirecciones">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>