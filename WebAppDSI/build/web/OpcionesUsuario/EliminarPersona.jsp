<%-- 
    Document   : EliminarPersonas
    Created on : 1 dic 2023, 14:04:15
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Persona</title>
    </head>
    <body>
        <h1>Eliminar persona</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarPersona">
            <div>
                <label>Id Persona ${param.idPersona}</label><br>
                <label>Nombres ${param.nombres}</label><br>
                <label>Apellidos: ${param.apellidos}</label><br>
                <label>Sexo ${param.sexo}</label><br>
                <input type="hidden" name="idPersona" id="idPersona" value="${param.idPersona}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la persona?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarPersonas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
