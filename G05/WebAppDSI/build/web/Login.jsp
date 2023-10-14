<%-- 
    Document   : Login
    Created on : 14 oct 2023, 03:44:58
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div><h1>INICIO DE SESIÓN</h1></div>
        
        <%-- Forma legible de imprimir la fecha usando Scriptlets --%>
            <%
                java.util.Date fechaActual = new java.util.Date();
                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/yyyy");
                String fechaActualLegible = sdf.format(fechaActual);
            %>
            <p><strong>Fecha actual: <%= fechaActualLegible %></strong></p>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=Login" id="FormLogin">
            <div id="ResultLogin"></div>
            <div><h1>Bienvenido a la web de Librería</h1></div>
            <div><label>Usuario:</label></div>
            <div><input type="text" name="TfUsuario" id="IdTfUsuario"></div><br>
            <div><label>Contrase&ntilde;a</label></div>
            <div><input type="password" name="TfContrasenia" id="IdTfContrasenia"></div><br>
            <div><input type="submit" value="Iniciar sesi&oacute;n"></div>
        </form>
    </body>
</html>
