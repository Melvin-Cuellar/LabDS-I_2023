<%-- 
    Document   : RegistroVentas
    Created on : 14 oct 2023, 04:15:07
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de ventas</title>
    </head>
    <body>
        <div><h1>Registrar Ventas</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroVentas" id="FormRegistroVentas">
            <div id="ResultRegVentas"></div>
            <div><label>Fk_Cliente</label></div>
            <div><input type="text" name="TfFk_Cliente" id="IdTfFk_Cliente"></div><br>
            <div><label>Fk_Usuario</label></div>
            <div><input type="text" name="TfFk_Usuario" id="IdTfFk_Usuario"></div><br>
            <div><label>Fecha de ventas</label></div>
            <div><input type="text" name="TfFechaVenta" id="IdTfFechaVenta"></div><br>
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
