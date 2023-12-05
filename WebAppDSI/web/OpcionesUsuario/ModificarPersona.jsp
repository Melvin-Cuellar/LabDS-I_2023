<%-- 
    Document   : ModificarPersona
    Created on : 1 dic 2023, 14:08:19
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Persona</title>
    </head>
    <body>   
        <h1>Modificar Persona</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarPersona">
            <div>
                <label>Id Persona</label>
                <input type="text" name="idPersona" id="idPersona" value="${param.idPersona}" readonly /><br>
                <label>Nombres</label>
                <input type="text" name="nombres" id="nombres" value="${param.nombres}" required /><br>
                <label>Apellidos</label>
                <input type="text" name="apellidos" id="apellidos" value="${param.apellidos}" required /><br><br>
                <label>Sexo</label>
                <input type="text" name="sexo" id="sexo" value="${param.sexo}" required /><br><br>       
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la persona?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarPersonas">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
