<%-- 
    Document   : EliminarEmpleado
    Created on : 29 nov 2023, 03:16:24
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Empleado</title>
    </head>
    <body>
        <h1>Eliminar empleado</h1>

        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=EliminarEmpleado">
            <div>
                <label>Id Empleado: ${param.idEmpleado}</label><br>
                <label>Id Persona: ${param.fkPersona}</label><br>
                <label>DUI ${param.dui}</label><br>
                <label>Fecha de nacimiento: ${param.fechaNac}</label><br>
                <label>Número de afiliado ISSS: ${param.isss}</label><br>
                <label>Id Dirección: ${param.fkDireccion}</label>  
                <!--
                <label>Nombres: $ {param.nombresEmpleado}</label><br>
                <label>Apellidos: $ {param.apellidosEmpleado}</label><br>
                -->
                <label>Teléfono: ${param.telefono}</label><br>
                <label>Correo: ${param.correo}</label><br> 
                <input type="hidden" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
