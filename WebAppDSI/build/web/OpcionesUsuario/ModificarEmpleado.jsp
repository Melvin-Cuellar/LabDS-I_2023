<%-- 
    Document   : ModificarEmpleado
    Created on : 29 nov 2023, 03:16:08
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Empleado</title>
    </head>
    <body>   
        <h1>Modificar empleado</h1>
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=ModificarEmpleado">
            <div>
                <label>Id Empleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" readonly /><br>
                <label>Id Persona</label>
                <input type="text" name="fkPersona" id="fkPersona" value="${param.fkPersona}" required /><br>
                <label>DUI:</label>
                <input type="text" name="dui" id="dui" value="${param.dui}" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNac" id="fechaNac" value="${param.fechaNac}" required /><br>
                <label>Número de afiliado ISSS:</label>
                <input type="text" name="isss" id="isss" value="${param.isss}" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="fkDireccion" id="fkDireccion" value="${param.fkDireccion}" required /><br><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br><br>        
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
