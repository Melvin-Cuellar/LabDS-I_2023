<%-- 
    Document   : RegistroClientes
    Created on : 14 oct 2023, 04:07:12
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de clientes</title>
    </head>
    <body>
        <div><h1>Registrar Clientes</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroClientes" id="FormRegistroClientes">
            <div id="ResultRegClientes"></div>
            <div><label>Fk_Persona</label></div>
            <div><input type="text" name="TfFk_Persona" id="IdTfFk_Persona"></div><br>
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
