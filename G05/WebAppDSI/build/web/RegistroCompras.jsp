<%-- 
    Document   : RegistroCompras
    Created on : 14 oct 2023, 04:14:54
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Compras</title>
    </head>
    <body>
        <div><h1>Registrar compras</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroCompras" id="FormRegistroCompras">
            <div id="ResultRegCompras"></div>
            <div><label>Fk_Proveedor</label></div>
            <div><input type="text" name="TfFk_Proveedor" id="IdTfFk_Proveedor"></div><br>
            <div><label>Fk_Usuario</label></div>
            <div><input type="text" name="TfFk_Usuario" id="IdTfFk_Usuario"></div><br>
            <div><label>Fecha de compra</label></div>
            <div><input type="text" name="TfFechaCompra" id="IdTfFechaCompra"></div><br>
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
