<%-- 
    Document   : RegistroEmpleados
    Created on : 14 oct 2023, 04:09:25
    Author     : CUELLAR
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de empleados</title>
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
        <div><h1>Registrar Empleados</h1></div>
        
        <form method="POST" action="/WebAppDSI/ServletPrincipal?accion=RegistroEmpleados" id="FormRegistroEmpleados">
            <div id="ResultRegEmpleados">
                <!--Id de tabla autoincrementeble en BD-->
                <label>Fk_Persona</label>
                <input type="text" name="fkPersona" id="fkPersona" required><br>
                <label>DUI</label>
                <input type="text" name="dui" id="dui" required><br>
                <label>Fecha de nacimiento</label>
                <input type="date" name="fechaNac" id="fechaNac" required><br>
                <label>ISSS</label>
                <input type="text" name="isss" id="isss" required><br>
                <label>Fk_Direccion</label>
                <input type="text" name="fkDireccion" id="fkDireccion" required><br>
                <label>Telefono</label>
                <input type="text" name="telefono" id="telefono" required><br>
                <label>Correo</label>
                <input type="email" name="correo" id="correo" required><br><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/WebAppDSI/?accion=GestionarEmpleados">Regresar</a>
            </div>
        </form>
        
        <!--
        <button onclick="Regresar()">Regresar</button>
        
        <script>
            function Regresar(){
                window.history.back();
            }
        </script>
        -->
    </body>
</html>
