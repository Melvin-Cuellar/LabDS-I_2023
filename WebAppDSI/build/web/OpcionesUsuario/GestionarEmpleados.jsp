<%-- 
    Document   : GestionarEmpleados
    Created on : 19 oct 2023, 23:58:57
    Author     : CUELLAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar empleados</title>
        <style>
            /*Estilo para el contenedor del pop-up*/
            .popup-container{
                display: none;
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                padding: 20px;
                background-color: #fff;
                border: 2px  solid #000;
                z-index: 1;
            }
            
            /*Estilo para el fondo oscuro*/
            .overlay{
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0,0,0,0.5);
                z-index: 0;
                
            }
        </style>
    </head>
    <body>
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>
        
        <br><a href="/WebAppDSI?accion=Inicio">Ir al menú principal</a><br><br>
        <a href="/WebAppDSI?accion=RegistroEmpleados">Agregar empleado</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>IdEmpleado</th>
                    <%--<th>FkPersona</th>
                    <th>DUI</th>
                    <th>FechaNac</th>
                    <th>ISSS</th>
                    <th>FkDireccion</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                    --%>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <%--
                    <th>Sexo</th>
                    <th>Dirección</th>
                    <th>IdUsuario</th>
                    <th>Usuario</th>
                    <th>IdRol</th>
                    --%>
                    <th>Rol</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.idEmpleado}" /></td>
                        <%--
                        <td><c:out value="${item.fkPersona}" /></td>
                        <td><c:out value="${item.dui}" /></td>                        
                        <td><c:out value="${item.fechaNac}" /></td>
                        <td><c:out value="${item.isss}" /></td>
                        <td><c:out value="${item.fkDireccion}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.correo}" /></td>
                        --%>
                        <td><c:out value="${item.nombres}" /></td>
                        <td><c:out value="${item.apellidos}" /></td>
                        <%--
                        <td><c:out value="${item.sexo}" /></td>
                        <td><c:out value="${item.direccionCompleta}" /></td>
                        <td><c:out value="${item.idUsuario}" /></td>
                        <td><c:out value="${item.usuario}" /></td>
                        <%--<td><c:out value="${item.idRol}" /></td>
                        --%>
                        <td><c:out value="${item.rol}" /></td>
                        <td>
                            <button class="open-popup-btn"
                                onclick="mostrarDetallesEmpleado(
                                    '${item.idEmpleado}',
                                    '${item.fkPersona}',
                                    '${item.dui}',
                                    '${item.fechaNac}',
                                    '${item.isss}',
                                    '${item.fkDireccion}',
                                    '${item.telefono}',
                                    '${item.correo}',
                                    '${item.nombres}',
                                    '${item.apellidos}',
                                    '${item.sexo}',
                                    '${item.direccionCompleta}',
                                    '${item.idUsuario}',
                                    '${item.usuario}',
                                    '${item.idRol}',
                                    '${item.rol}'
                                    )">Ver detalles
                            </button>
                            
                            <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>ID Empleado: <span id="idEmpleado"></span></label><br>
                                <label>DUI: <span id="dui"></span></label><br>
                                <label>ISSS: <span id="isss"></span></label><br>
                                <label>Nombres: <span id="nombres"></span></label><br>
                                <label>Apellidos: <span id="apellidos"></span></label><br>
                                <label>Fecha de nacimiento: <span id="fechaNac"></span></label><br>
                                <label>Teléfono: <span id="telefono"></span></label><br>
                                <label>Correo: <span id="correo"></span></label><br>
                                <label>Cargo: <span id="rol"></span></label><br>
                                <label>Sexo <span id="sexo"></span></label><br>
                                <label>ID Usuario <span id="idUsuario"></span></label><br>
                                <label>Usuarioo: <span id="usuario"></span></label><br>
                                <label>Rol <span id="rol"></span></label><br>
                                <label>Dirección: <span id="direccionCompleta"></span></label><br><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
                            
                            <!--Modificar-->
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/ModificarEmpleado.jsp">
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="fkPersona" value="${item.fkPersona}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="isss" value="${item.isss}" />
                                <input type="hidden" name="fkDireccion" value="${item.fkDireccion}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="submit" value="Modificar" />
                            </form>  
                                
                            <!--Eliminar-->
                            <form method="POST" action="/WebAppDSI/OpcionesUsuario/EliminarEmpleado.jsp">
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="apellidos" value="${item.apellidos}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="isss" value="${item.isss}" />
                                <input type="hidden" name="direccionCompleta" value="${item.direccionCompleta}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="rol" value="${item.rol}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
    <script>
        function abrirPopup() {
            var popup = document.getElementById('popup');
            var overlay = document.getElementById('overlay');

            if (popup.style.display === 'block') {
                popup.style.display = 'none';
                overlay.style.display = 'none';
            } else {
                popup.style.display = 'block';
                overlay.style.display = 'block';
            }
        }

        function mostrarDetallesEmpleado(idEmpleado, dui, isss, nombres, apellidos, fechaNac, telefono, correo, rol, direccionCompleta) {
            document.getElementById('idEmpleado').textContent = idEmpleado;
            document.getElementById('dui').textContent = dui;
            document.getElementById('isss').textContent = isss;
            document.getElementById('nombres').textContent = nombres;
            document.getElementById('apellidos').textContent = apellidos;
            document.getElementById('fechaNac').textContent = fechaNac;
            document.getElementById('telefono').textContent = telefono;
            document.getElementById('correo').textContent = correo;
            document.getElementById('rol').textContent = rol;
            document.getElementById('direccionCompleta').textContent = direccionCompleta;

            // Muestra el pop-up
            abrirPopup();
        }
    </script>
</html>
