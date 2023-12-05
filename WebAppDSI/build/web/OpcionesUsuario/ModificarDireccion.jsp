<%-- 
    Document   : ModificarDireccion
    Created on : 1 dic 2023, 14:07:53
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Dirección</title>
    </head>
    <body>   
        <h1>Modificar Dirección</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarDireccion">
            <div>
                <label>Id Dirección</label>
                <input type="text" name="idDireccion" id="idDireccion" value="${param.idDireccion}" readonly /><br>
                <label>Descripción de la dirección</label>
                <input type="text" name="descripcionDireccion" id="descripcionDireccion" value="${param.descripcionDireccion}" required /><br>
                <label>Fk Distrito</label>
                <input type="text" name="fkDistrito" id="fkDistrito" value="${param.fkDistrito}" required /><br><br>        
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la dirección?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarDirecciones">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
