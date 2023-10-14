<%-- 
    Document   : RegistroArticulos
    Created on : 14 oct 2023, 03:57:32
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de artículos</title>
    </head>
    <body>
        <div><h1>Registrar Artículos</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroArticulos" id="FormRegistroArticulos">
            <div id="ResultRegArticulos"></div>
            <div><label>Nombres:</label></div>
            <div><input type="text" name="TfNombres" id="IdTfNombres"></div><br>
            <div><label>Apellidos</label></div>
            <div><input type="text" name="TfApellidos" id="IdTfApellidos"></div><br>
            <div><label>Sexo</label></div>
            <div><input type="text" name="TfSexo" id="IdTfSexo"></div><br>
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
