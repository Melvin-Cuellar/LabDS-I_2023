<%-- 
    Document   : MenuAdministrador
    Created on : 14 oct 2023, 03:47:32
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
    </head>
    <body>
        <nav>
            <ul>
                <li><a href="/WebAppDSI?accion=Inicio">INICIO</a></li>
                <%--<li><a href="/WebAppDSI?accion=Login">Login</a></li>--%>
                <li><a href="/WebAppDSI?accion=GestionarEmpleados">Gestión de Empleados</a></li>
                <li><a href="/WebAppDSI?accion=GestionarArticulos">Gestión de Artículos</a></li>
                <li><a href="/WebAppDSI?accion=GestionarClientes">Gestión de Clientes</a></li>
                <li><a href="/WebAppDSI?accion=GestionarCompras">Gestión de Compras</a></li>
                <li><a href="/WebAppDSI?accion=GestionarDirecciones">Gestión de Direcciones</a></li>
                <li><a href="/WebAppDSI?accion=GestionarFormasPago">Gestión de Formas de pago</a></li>
                <li><a href="/WebAppDSI?accion=GestionarPersonas">Gestión de Personas</a></li>
                <li><a href="/WebAppDSI?accion=GestionarProveedores">Gestión de Proveedores</a></li>
                <%--<li><a href="/WebAppDSI?accion=GestionarUsuarios">Gestión de Usuarios</a></li>--%>
                <li><a href="/WebAppDSI?accion=GestionarVentas">Gestión de Ventas</a></li>
            </ul>
        </nav>
    </body>
</html>
