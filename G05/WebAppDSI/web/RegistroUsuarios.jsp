<%-- 
    Document   : RegistroUsuarios
    Created on : 14 oct 2023, 04:11:57
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de usuarios</title>
    </head>
    <body>
        <div><h1>Registrar Usuarios</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroUsuarios" id="FormRegistroUsuarios">
            <div id="ResultRegUsuarios"></div>
            <div><label>Fk_Empleado</label></div>
            <div><input type="text" name="TfFk_Empleado" id="IdTfFk_Empleado"></div><br>
            <div><label>Fk_Rol</label></div>
            <div><input type="text" name="TfFk_Rol" id="IdTfFk_Rol"></div><br>
            <div><label>Usuairo</label></div>
            <div><input type="text" name="TfUsuairo" id="IdTfUsuairo"></div><br>
            <div><label>Clave</label></div>
            <div><input type="text" name="TfClave" id="IdTfClave"></div><br>
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
