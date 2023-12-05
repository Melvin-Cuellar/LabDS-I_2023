<%-- 
    Document   : ModificarCliente
    Created on : 1 dic 2023, 14:07:29
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Cliente</title>
    </head>
    <body>   
        <h1>Modificar Cliente</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarCliente">
            <div>
                <label>Id Cliente</label>
                <input type="text" name="idCliente" id="idCliente" value="${param.idCliente}" readonly /><br>
                <label>Fk Persona</label>
                <input type="text" name="fkPersona" id="fkPersona" value="${param.fkPersona}" required /><br>
                <label>Correo</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br><br>        
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el cliente?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
