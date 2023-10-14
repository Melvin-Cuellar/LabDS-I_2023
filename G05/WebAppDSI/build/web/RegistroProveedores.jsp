<%-- 
    Document   : RegistroProveedores
    Created on : 14 oct 2023, 04:11:07
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de proveedores</title>
    </head>
    <body>
        <div><h1>Registrar Proveedores</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroProveedores" id="FormRegistroProveedores">
            <div id="ResultRegProveedores"></div>
            <div><label>Proveedor</label></div>
            <div><input type="text" name="TfProveedor" id="IdTfProveedor"></div><br>
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
