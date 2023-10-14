/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

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
        }else if(accion.equals("Login")){
            request.getRequestDispatcher("/Login.jsp").forward(request,response);
        }else if(accion.equals("RegistroEmpleados")){
            request.getRequestDispatcher("/RegistroEmpleados.jsp").forward(request, response);
        }else if(accion.equals("RegistroUsuarios")){
            request.getRequestDispatcher("/RegistroUsuarios.jsp").forward(request, response);
        }else if(accion.equals("RegistroProveedores")){
            request.getRequestDispatcher("/RegistroProveedores.jsp").forward(request, response);
        }else if(accion.equals("RegistroArticulos")){
            request.getRequestDispatcher("/RegistroArticulos.jsp").forward(request, response);
        }else if(accion.equals("RegistroClientes")){
            request.getRequestDispatcher("/RegistroClientes.jsp").forward(request, response);
        }else if(accion.equals("RegistroCompras")){
            request.getRequestDispatcher("/RegistroCompras.jsp").forward(request, response);
        }else if(accion.equals("RegistroVentas")){
            request.getRequestDispatcher("/RegistroVentas.jsp").forward(request, response);
        }else if(accion.equals("RegistroFormasPago")){
            request.getRequestDispatcher("/RegistroFormasPago.jsp").forward(request, response);
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
                if(Usuario.equals("Admin") &&  Contrasenia.equals("root")){
                   request.getRequestDispatcher("/PanelAdministrador.jsp").forward(request, response);
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
