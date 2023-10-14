<%-- 
    Document   : RegistroFormasPago
    Created on : 14 oct 2023, 04:21:09
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de formas de pago</title>
    </head>
    <body>
        <div><h1>Registrar Formas de pago</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroFormasPago" id="FormRegistroFormasPago">
            <div id="ResultRegFormasPago"></div>
            <div><label>Froma de pago</label></div>
            <div><input type="text" name="TfFormaPago" id="IdTfFormaPago"></div><br>
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
