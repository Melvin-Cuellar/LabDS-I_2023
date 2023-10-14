<%-- 
    Document   : RegistroEmpleados
    Created on : 14 oct 2023, 04:09:25
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de empleados</title>
    </head>
    <body>
        <div><h1>Registrar Empleados</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroEmpleados" id="FormRegistroEmpleados">
            <div id="ResultRegEmpleados"></div>
            <div><label>Fk_Persona</label></div>
            <div><input type="text" name="TfFk_Persona" id="IdTfFk_Persona"></div><br>
            <div><label>DUI</label></div>
            <div><input type="text" name="TfDUI" id="IdTfDUI"></div><br>
            <div><label>Fecha de nacimiento</label></div>
            <div><input type="text" name="TfFechaNac" id="IdTfFechaNac"></div><br>
            <div><label>ISSS</label></div>
            <div><input type="text" name="TfISSS" id="IdTfISSS"></div><br>
            <div><label>Fk_Direccion</label></div>
            <div><input type="text" name="TfFk_Direccion" id="IdTfFk_Direccion"></div><br>
            <div><label>Telefono</label></div>
            <div><input type="text" name="TfTelefono" id="IdTfTelefono"></div><br>
            <div><label>Correo</label></div>
            <div><input type="text" name="TfCorreo" id="IdTfCorreo"></div><br>
            <div><input type="submit" value="Agregar"></div>
        </form>
        <br>
        <button onclick="Regresar()">Regresar</button>
        
        <script>
            function Regresar(){
                window.history.back();
            }
        </script>
    </body>
</html>
