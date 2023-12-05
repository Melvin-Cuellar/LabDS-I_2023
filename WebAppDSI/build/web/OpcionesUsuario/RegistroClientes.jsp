<%-- 
    Document   : RegistroClientes
    Created on : 14 oct 2023, 04:07:12
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de clientes</title>
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>
        <div><h1>Registrar Clientes</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroClientes" id="FormRegistroClientes">
            <div id="ResultRegClientes">
                <label>FkPersona</label>
                <input type="text" name="fkPersona" id="fkPersona"><br>
                <label>Correo</label>
                <input type="email" name="correo" id="correo"><br>
                <input type="submit" value="Agregar">
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarClientes">Regresar</a>
            </div>
        </form>
    </body>
</html>
