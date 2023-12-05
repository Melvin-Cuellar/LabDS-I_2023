/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

//Librerías para conexión con BD
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//Modelos
import Models.ViewModelEmpleados;
import Models.ViewModelArticulos;
import Models.ViewModelClientes;
import Models.ViewModelCompras;
import Models.ViewModelDirecciones;
import Models.ViewModelEmpleados;
import Models.ViewModelFormasPago;
import Models.ViewModelPersonas;
import Models.ViewModelProveedores;
import Models.ViewModelUsuarios;
import Models.ViewModelVentas;


//Librerías de servlet
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
/**
 *
 * @author CUELLAR
 */
public class ServletPrincipal extends HttpServlet {
    
    //Datos para conectarse a la BD
    private final String usuario = "login_admin_GLOB";
    private final String contrasenia = "glove";
    private final String servidor = "localhost:1433";
    private final String bd = "LibreriaBD";
    
    String url = "jdbc:sqlserver://" 
            + servidor 
            + ";databaseName=" + bd 
            + ";user=" + usuario 
            + ";password=" + contrasenia 
            + ";encrypt=false;trustServerCertificate=false;";
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    /*********************************CRUD Empleado*********************************/
    //CREATE (Insert)
    public void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla Empleados es autoincrementable
        String fkPersona = request.getParameter("fkPersona");
        String dui = request.getParameter("dui");
        String fechaNac = request.getParameter("fechaNac");
        String isss = request.getParameter("isss");
        String fkDireccion = request.getParameter("fkDireccion");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Empleados values (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fkPersona);
                pstmt.setString(2, dui);
                pstmt.setString(3, fechaNac);
                pstmt.setString(4, isss);
                pstmt.setString(5, fkDireccion);
                pstmt.setString(6, telefono);
                pstmt.setString(7, correo);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from VistaInformacionEmpleado";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelEmpleados> listaEmpleados = new ArrayList<>();
                while (rs.next()) {
                    ViewModelEmpleados empleado = new ViewModelEmpleados();
                    empleado.setIdEmpleado(rs.getInt("idEmpleado"));
                    empleado.setFkPersona(rs.getInt("fkPersona"));
                    empleado.setDui(rs.getString("dui"));
                    empleado.setFechaNac(rs.getDate("fechaNac"));
                    empleado.setIsss(rs.getString("isss"));
                    empleado.setFkDireccion(rs.getInt("fkDireccion"));
                    empleado.setTelefono(rs.getString("telefono"));
                    empleado.setCorreo(rs.getString("correo"));
                    /////////////////////////////////////////////////////////////////
                    /////////////////////////////////////////////////////////////////
                    empleado.setNombres(rs.getString("nombres"));
                    empleado.setApellidos(rs.getString("apellidos"));
                    empleado.setSexo(rs.getString("sexo"));
                    empleado.setDireccionCompleta(rs.getString("direccionCompleta"));
                    empleado.setIdUsuario(rs.getInt("idUsuario"));
                    empleado.setUsuario(rs.getString("usuario"));
                    empleado.setIdRol(rs.getInt("idRol"));
                    empleado.setRol(rs.getString("rol"));
                    listaEmpleados.add(empleado);
                    
                }               
                request.setAttribute("listaEmpleados", listaEmpleados);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idEmpleado = request.getParameter("idEmpleado");
        String fkPersona = request.getParameter("fkPersona");
        String dui = request.getParameter("dui");
        String fechaNac = request.getParameter("fechaNac");
        String isss = request.getParameter("isss");
        String fkDireccion = request.getParameter("fkDireccion");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Empleados set "
                 + "FkPersona='"+fkPersona+"', " 
                 + "DUI='"+dui+"', "
                 + "FechaNac='"+fechaNac+"', "
                 + "ISSS='"+isss+"', "
                 + "FkDireccion='"+fkDireccion+"', " 
                 + "Telefono='"+telefono+"', "
                 + "Correo='"+correo+"' " 
                 + "where IdEmpleado='"+idEmpleado+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        String idEmpleado = request.getParameter("idEmpleado");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Empleados where IdEmpleado='" + idEmpleado + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    /*********************************CRUD Articulo*********************************/
    //CREATE (Insert)
    public void agregarArticulo(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla Articulos es autoincrementable
        String nombreArticulo = request.getParameter("nombreArticulo");
        String descripcion = request.getParameter("descripcion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Articulos values (?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombreArticulo);
                pstmt.setString(2, descripcion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarArticulos(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Articulos";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelArticulos> listaArticulos = new ArrayList<>();
                while (rs.next()) {
                    ViewModelArticulos articulo = new ViewModelArticulos();
                    articulo.setIdArticulo(rs.getInt("idArticulo"));
                    articulo.setNombreArticulo(rs.getString("nombreArticulo"));
                    articulo.setDescripcion(rs.getString("descripcion"));
                    listaArticulos.add(articulo);
                }               
                request.setAttribute("listaArticulos", listaArticulos);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarArticulo(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idArticulo = request.getParameter("idArticulo");
        String nombreArticulo = request.getParameter("nombreArticulo");
        String descripcion = request.getParameter("descripcion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Articulos set "
                 + "NombreArticulo='"+nombreArticulo+"', " 
                 + "Descripcion='"+descripcion+"' "
                 + "where IdArticulo='"+idArticulo+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarArticulo(HttpServletRequest request, HttpServletResponse response) {
        String idArticulo = request.getParameter("idArticulo");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Articulos where IdArticulo='" + idArticulo + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    /*********************************CRUD Cliente*********************************/
    //CREATE (Insert)
    public void agregarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla Clientes es autoincrementable
        String fkPersona = request.getParameter("fkPersona");
        String correo = request.getParameter("correo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Clientes values (?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fkPersona);
                pstmt.setString(2, correo);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarClientes(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Clientes";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelClientes> listaClientes = new ArrayList<>();
                while (rs.next()) {
                    ViewModelClientes cliente = new ViewModelClientes();
                    cliente.setIdCliente(rs.getInt("idCliente"));
                    cliente.setFkPersona(rs.getInt("fkPersona"));
                    cliente.setCorreo(rs.getString("correo"));
                    listaClientes.add(cliente);
                }               
                request.setAttribute("listaClientes", listaClientes);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idCliente = request.getParameter("idCliente");
        String fkPersona = request.getParameter("fkPersona");
        String correo = request.getParameter("correo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Clientes set "
                 + "FkPersona='"+fkPersona+"', "
                 + "Correo='"+correo+"' " 
                 + "where IdCliente='"+idCliente+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarCliente(HttpServletRequest request, HttpServletResponse response) {
        String idCliente = request.getParameter("idCliente");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Clientes where IdCliente='" + idCliente + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    /*********************************CRUD Compra*********************************/
    //CREATE (Insert)
    public void agregarCompra(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla Compras es autoincrementable
        String fkProveedor = request.getParameter("fkProveedor");
        String fkUsuario = request.getParameter("fkUsuario");
        String fechaCompra = request.getParameter("fechaCompra");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Compras values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fkProveedor);
                pstmt.setString(2, fkUsuario);
                pstmt.setString(3, fechaCompra);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarCompras(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Compras";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelCompras> listaCompras = new ArrayList<>();
                while (rs.next()) {
                    ViewModelCompras compra = new ViewModelCompras();
                    compra.setIdCompra(rs.getInt("idCompra"));
                    compra.setFkProveedor(rs.getInt("fkProveedor"));
                    compra.setFkUsuario(rs.getInt("fkUsuario"));
                    compra.setFechaCompra(rs.getDate("fechaCompra"));
                    listaCompras.add(compra);
                }               
                request.setAttribute("listaCompras", listaCompras);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarCompra(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idCompra = request.getParameter("idCompra");
        String fkProveedor = request.getParameter("fkProveedor");
        String fkUsuario = request.getParameter("fkUsuario");
        String fechaCompra = request.getParameter("fechaCompra");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Compras set "
                 + "FkProveedor='"+fkProveedor+"', "
                 + "FkUsuario='"+fkUsuario+"', " 
                 + "FechaCompra='"+fechaCompra+"' "
                 + "where IdCompra='"+idCompra+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarCompra(HttpServletRequest request, HttpServletResponse response) {
        String idCompra = request.getParameter("idCompra");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Compras where IdCompra='" + idCompra + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    /*********************************CRUD Direccion*********************************/
    //CREATE (Insert)
    public void agregarDireccion(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla Direcciones es autoincrementable
        String descripcionDireccion = request.getParameter("descripcionDireccion");
        String fkDistrito = request.getParameter("fkDistrito");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Direcciones values (?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, descripcionDireccion);
                pstmt.setString(2, fkDistrito);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarDirecciones(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Direcciones";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDirecciones> listaDirecciones = new ArrayList<>();
                while (rs.next()) {
                    ViewModelDirecciones direccion = new ViewModelDirecciones();
                    direccion.setIdDireccion(rs.getInt("idDireccion"));
                    direccion.setDescripcionDireccion(rs.getString("descripcionDireccion"));
                    direccion.setFkDistrito(rs.getInt("fkDistrito"));
                    listaDirecciones.add(direccion);
                }               
                request.setAttribute("listaDirecciones", listaDirecciones);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarDireccion(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idDireccion = request.getParameter("idDireccion");
        String descripcionDireccion = request.getParameter("descripcionDireccion");
        String fkDistrito = request.getParameter("fkDistrito");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Direcciones set "
                 + "DescripcionDireccion='"+descripcionDireccion+"', "
                 + "FkDistrito='"+fkDistrito+"' "
                 + "where IdDireccion='"+idDireccion+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarDireccion(HttpServletRequest request, HttpServletResponse response) {
        String idDireccion = request.getParameter("idDireccion");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Direcciones where IdDireccion='" + idDireccion + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    /*********************************CRUD FormaPago*********************************/
    //CREATE (Insert)
    public void agregarFormaPago(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla FormasPagos es autoincrementable
        String formaPago = request.getParameter("formaPago");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into FormasPagos values (?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, formaPago);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarFormasPago(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from FormasPagos";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelFormasPago> listaFormasPago = new ArrayList<>();
                while (rs.next()) {
                    ViewModelFormasPago formaPago = new ViewModelFormasPago();
                    formaPago.setIdFormaPago(rs.getInt("idFormaPago"));
                    formaPago.setFormaPago(rs.getString("formaPago"));
                    listaFormasPago.add(formaPago);
                }               
                request.setAttribute("listaFormasPago", listaFormasPago);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarFormaPago(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idFormaPago = request.getParameter("idFormaPago");
        String formaPago = request.getParameter("formaPago");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update FormasPagos set "
                 + "FormaPago='"+formaPago+"' "
                 + "where IdFormaPago='"+idFormaPago+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarFormaPago(HttpServletRequest request, HttpServletResponse response) {
        String idFormaPago = request.getParameter("idFormaPago");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from FormasPagos where IdFormaPago='" + idFormaPago + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    /*********************************CRUD Persona*********************************/
    //CREATE (Insert)
    public void agregarPersona(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de las perso tabla Personas es autoincrementable
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String sexo = request.getParameter("sexo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Personas values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombres);
                pstmt.setString(2, apellidos);
                pstmt.setString(3, sexo);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarPersonas(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Personas";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelPersonas> listaPersonas = new ArrayList<>();
                while (rs.next()) {
                    ViewModelPersonas persona = new ViewModelPersonas();
                    persona.setIdPersona(rs.getInt("idPersona"));
                    persona.setNombres(rs.getString("nombres"));
                    persona.setApellidos(rs.getString("apellidos"));
                    persona.setSexo(rs.getString("sexo"));
                    listaPersonas.add(persona);
                }               
                request.setAttribute("listaPersonas", listaPersonas);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarPersona(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idPersona = request.getParameter("idPersona");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String sexo = request.getParameter("sexo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Personas set "
                 + "Nombres='"+nombres+"', "
                 + "Apellidos='"+apellidos+"', " 
                 + "Sexo='"+sexo+"' "
                 + "where idPersona='"+idPersona+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarPersona(HttpServletRequest request, HttpServletResponse response) {
        String idPersona = request.getParameter("idPersona");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Personas where IdPersona='" + idPersona + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    /*********************************CRUD Proveedor*********************************/
    //CREATE (Insert)
    public void agregarProveedor(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla Proveedores es autoincrementable
        String nombreProveedor = request.getParameter("nombreProveedor");
        String fkDireccion = request.getParameter("fkDireccion");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Proveedores values (?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombreProveedor);
                pstmt.setString(2, fkDireccion);
                pstmt.setString(3, telefono);
                pstmt.setString(4, correo);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarProveedores(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Proveedores";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelProveedores> listaProveedores = new ArrayList<>();
                while (rs.next()) {
                    ViewModelProveedores proveedor = new ViewModelProveedores();
                    proveedor.setIdProveedor(rs.getInt("idProveedor"));
                    proveedor.setNombreProveedor(rs.getString("nombreProveedor"));
                    proveedor.setFkDireccion(rs.getInt("fkDireccion"));
                    proveedor.setTelefono(rs.getString("telefono"));
                    proveedor.setCorreo(rs.getString("correo"));
                    listaProveedores.add(proveedor);
                }               
                request.setAttribute("listaProveedores", listaProveedores);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarProveedor(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idProveedor = request.getParameter("idProveedor");
        String nombreProveedor = request.getParameter("nombreProveedor");
        String fkDireccion = request.getParameter("fkDireccion");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Proveedores set "
                 + "NombreProveedor='"+nombreProveedor+"', "
                 + "FkDireccion='"+fkDireccion+"', " 
                 + "Telefono='"+telefono+"', "
                 + "Correo='"+correo+"' " 
                 + "where IdProveedor='"+idProveedor+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarProveedor(HttpServletRequest request, HttpServletResponse response) {
        String idProveedor = request.getParameter("idProveedor");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Proveedores where IdProveedor='" + idProveedor + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    /*********************************CRUD Usuario*********************************/
    //CREATE (Insert)
    public void agregarUsuario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla Usuarios es autoincrementable
        String fkEmpleado = request.getParameter("fkEmpleado");
        String fkRol = request.getParameter("fkRol");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Usuarios values (?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fkEmpleado);
                pstmt.setString(2, fkRol);
                pstmt.setString(3, usuario);
                pstmt.setString(4, clave);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarUsuarios(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Usuarios";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelUsuarios> listaUsuarios = new ArrayList<>();
                while (rs.next()) {
                    ViewModelUsuarios usuario = new ViewModelUsuarios();
                    usuario.setIdUsuario(rs.getInt("idUsuario"));
                    usuario.setFkEmpleado(rs.getInt("fkEmpleado"));
                    usuario.setFkRol(rs.getInt("fkRol"));
                    usuario.setUsuario(rs.getString("usuario"));
                    usuario.setClave(rs.getString("clave"));
                    listaUsuarios.add(usuario);
                }               
                request.setAttribute("listaUsuarios", listaUsuarios);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarUsuario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idUsuario = request.getParameter("idUsuario");
        String fkEmpleado = request.getParameter("fkEmpleado");
        String fkRol = request.getParameter("fkRol");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Usuarios set "
                 + "FkEmpleado='"+fkEmpleado+"', "
                 + "FkRol='"+fkRol+"', " 
                 + "Usuario='"+usuario+"', "
                 + "Clave='"+clave+"' " 
                 + "where IdUsuario='"+idUsuario+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarUsuario(HttpServletRequest request, HttpServletResponse response) {
        String idUsuario = request.getParameter("idUsuario");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Usuarios where IdUsuario='" + idUsuario + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    /*********************************CRUD Venta*********************************/
    //CREATE (Insert)
    public void agregarVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de la tabla Ventas es autoincrementable
        String fkCliente = request.getParameter("fkCliente");
        String fkUsuario = request.getParameter("fkUsuario");
        String fechaVenta = request.getParameter("fechaVenta");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Ventas values (?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fkCliente);
                pstmt.setString(2, fkUsuario);
                pstmt.setString(3, fechaVenta);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //READ (Select)
    public void mostrarVentas(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Ventas";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelVentas> listaVentas = new ArrayList<>();
                while (rs.next()) {
                    ViewModelVentas venta = new ViewModelVentas();
                    venta.setIdVenta(rs.getInt("idVenta"));
                    venta.setFkCliente(rs.getInt("fkCliente"));
                    venta.setFkUsuario(rs.getInt("fkUsuario"));
                    venta.setFechaVenta(rs.getDate("fechaVenta"));
                    listaVentas.add(venta);
                }               
                request.setAttribute("listaVentas", listaVentas);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //UPDATE
    public void modificarVenta(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idVenta = request.getParameter("idVenta");
        String fkCliente = request.getParameter("fkCliente");
        String fkUsuario = request.getParameter("fkUsuario");
        String fechaVenta = request.getParameter("fechaVenta");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Ventas set "
                 + "FkCliente='"+fkCliente+"', "
                 + "FkUsuario='"+fkUsuario+"', "
                 + "FechaVenta='"+fechaVenta+"' " 
                 + "where IdVenta='"+idVenta+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //DELETE
    public void eliminarVenta(HttpServletRequest request, HttpServletResponse response) {
        String idVenta = request.getParameter("idVenta");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Ventas where IdVenta='" + idVenta + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion =  request.getParameter("accion");
        
        if(accion == null){
            request.getRequestDispatcher("/Login.jsp").forward(request,response);
        /*
        }else if(accion.equals("Login")){
            request.getRequestDispatcher("/Login.jsp").forward(request,response);
        */
        }
        else if(accion.equals("Inicio")){
            request.getRequestDispatcher("PanelesUsuario/PanelAdministrador.jsp").forward(request,response);
        }else if(accion.equals("GestionarEmpleados")){
            mostrarEmpleados(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarEmpleados.jsp").forward(request, response);
        }else if(accion.equals("RegistroEmpleados")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroEmpleados.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarArticulos")){
            mostrarArticulos(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarArticulos.jsp").forward(request, response);
        }else if(accion.equals("RegistroArticulos")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroArticulos.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarClientes")){
            mostrarClientes(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarClientes.jsp").forward(request, response);
        }else if(accion.equals("RegistroClientes")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroClientes.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarCompras")){
            mostrarCompras(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarCompras.jsp").forward(request, response);
        }else if(accion.equals("RegistroCompras")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroCompras.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarDirecciones")){
            mostrarDirecciones(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarDirecciones.jsp").forward(request, response);
        }else if(accion.equals("RegistroDirecciones")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroDirecciones.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarFormasPago")){
            mostrarFormasPago(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarFormasPago.jsp").forward(request, response);
        }else if(accion.equals("RegistroFormasPago")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroFormasPago.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarPersonas")){
            mostrarPersonas(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarPersonas.jsp").forward(request, response);
        }else if(accion.equals("RegistroPersonas")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroPersonas.jsp").forward(request, response);
        }
        else if(accion.equals("GestionarProveedores")){
            mostrarProveedores(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarProveedores.jsp").forward(request, response);
        }else if(accion.equals("RegistroProveedores")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroProveedores.jsp").forward(request, response);
        }
        /*
        else if(accion.equals("GestionarUsuarios")){
            mostrarUsuarios(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarUsuarios.jsp").forward(request, response);
        }else if(accion.equals("RegistroUsuarios")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroUsuarios.jsp").forward(request, response);
        }
        */
        else if(accion.equals("GestionarVentas")){
            mostrarVentas(request, response);
            request.getRequestDispatcher("OpcionesUsuario/GestionarVentas.jsp").forward(request, response);
        }else if(accion.equals("RegistroVentas")){
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("OpcionesUsuario/RegistroVentas.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        
        if(accion.equals("Login")){
            String Usuario = request.getParameter("TfUsuario");
            String Contrasenia = request.getParameter("TfContrasenia");
            
            try(PrintWriter print = response.getWriter()){
                //Aquí habrá que comparar con un usuario y contraseña reales
                if(Usuario.equals("Admin") &&  Contrasenia.equals("root")){
                   request.getRequestDispatcher("PanelesUsuario/PanelAdministrador.jsp").forward(request, response);
                }else{
                    print.println("<!DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title>Login sistema de Librería</title>");            
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h2>Usuario o contraseña erroneos</h2>");
                    print.println("</body>");
                    print.println("</html>");
                }
            }
        }
        
        
        //CAPTURA DE DATOS ENVIADOS POR POST DESDE EL FORMULARIO (Registro...)
        if(accion.equals("RegistroEmpleados")) {
            //Se le pasan los datos por parametros a la función
            agregarEmpleado(request, response);
            //Redirige nuevamente a la vista del formulario
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroEmpleados");
        }else if (accion.equals("ModificarEmpleado")) {
            modificarEmpleado(request, response);
            //Redirige a la vista Gestionar...
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        }else if (accion.equals("EliminarEmpleado")) {
            eliminarEmpleado(request, response);
            //Redirige a la vista Gestionar...
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        }
        else if(accion.equals("RegistroArticulos")) {
            agregarArticulo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroArticulos");
        }else if (accion.equals("ModificarArticulo")) {
            modificarArticulo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarArticulos");
        }else if (accion.equals("EliminarArticulo")) {
            eliminarArticulo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarArticulos");
        }
        else if(accion.equals("RegistroClientes")) {
            agregarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroClientes");
        }else if (accion.equals("ModificarCliente")) {
            modificarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarClientes");
        }else if (accion.equals("EliminarCliente")) {
            eliminarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarClientes");
        }
        else if(accion.equals("RegistroCompras")) {
            agregarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroCompras");
        }else if (accion.equals("ModificarCompra")) {
            modificarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCompras");
        }else if (accion.equals("EliminarCompra")) {
            eliminarCompra(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCompras");
        }
        else if(accion.equals("RegistroDirecciones")) {
            agregarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroDirecciones");
        }else if (accion.equals("ModificarDireccion")) {
            modificarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDirecciones");
        }else if (accion.equals("EliminarDireccion")) {
            eliminarDireccion(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarDirecciones");
        }
        else if(accion.equals("RegistroFormasPago")) {
            agregarFormaPago(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroFormasPago");
        }else if (accion.equals("ModificarFormaPago")) {
            modificarFormaPago(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarFormasPago");
        }else if (accion.equals("EliminarFormaPago")) {
            eliminarFormaPago(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarFormasPago");
        }
        else if(accion.equals("RegistroPersonas")) {
            agregarPersona(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroPersonas");
        }else if (accion.equals("ModificarPersona")) {
            modificarPersona(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarPersonas");
        }else if (accion.equals("EliminarPersona")) {
            eliminarPersona(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarPersonas");
        }
        else if(accion.equals("RegistroProveedores")) {
            agregarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroProveedores");
        }else if (accion.equals("ModificarProveedor")) {
            modificarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarProveedores");
        }else if (accion.equals("EliminarProveedor")) {
            eliminarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarProveedores");
        }
        /*
        else if(accion.equals("RegistroUsuarios")) {
            agregarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroUsuarios");
        }else if (accion.equals("ModificarUsuario")) {
            modificarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarUsuarios");
        }else if (accion.equals("EliminarUsuario")) {
            eliminarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarUsuarios");
        }
        */
        else if(accion.equals("RegistroVentas")) {
            agregarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=RegistroVentas");
        }else if (accion.equals("ModificarVenta")) {
            modificarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarVentas");
        }else if (accion.equals("EliminarVenta")) {
            eliminarVenta(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarVentas");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
