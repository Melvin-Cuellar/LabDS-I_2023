<%-- 
    Document   : EliminarClientes
    Created on : 1 dic 2023, 14:02:43
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Cliente</title>
    </head>
    <body>
        <h1>Eliminar cliente</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarCliente">
            <div>
                <label>Id Cliente ${param.idCliente}</label><br>
                <label>Fk Persona ${param.fkPersona}</label><br>
                <label>Correo: ${param.correo}</label><br> 
                <input type="hidden" name="idCliente" id="idCliente" value="${param.idCliente}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el cliente?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>