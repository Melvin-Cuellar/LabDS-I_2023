/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

//Librería para poder utilizar el tipo de formato fecha(Date)
import java.util.Date;

/**
 *
 * @author CUELLAR
 */
public class ViewModelEmpleados {

    //Declaración de atributos
    //Utilizar camelCase para que java no se ponga renuente
    private int idEmpleado;
    private int fkPersona;
    private String dui;
    private Date fechaNac;
    private String isss;
    private int fkDireccion;
    private String telefono;
    private String correo;
    //Variables para los datos de las tablas padre
    //Tabla Persona
    private String nombres;
    private String apellidos;
    private String sexo;
    //Direcciones
    private String direccionCompleta;
    //Variables para los datos de tabla hija (Usuarios) y Roles
    private int idUsuario;
    private String usuario;
    private int idRol;
    private String rol;
    

    public int getIdEmpleado() {
        return idEmpleado;
    }
    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public int getFkPersona() {
        return fkPersona;
    }
    public void setFkPersona(int fkPersona) {
        this.fkPersona = fkPersona;
    }

    public String getDui() {
        return dui;
    }
    public void setDui(String dui) {
        this.dui = dui;
    }

    public Date getFechaNac() {
        return fechaNac;
    }
    public void setFechaNac(Date fechaNac) {
        this.fechaNac = fechaNac;
    }
    
    public String getIsss() {
        return isss;
    }
    public void setIsss(String isss) {
        this.isss = isss;
    }

    public int getFkDireccion() {
        return fkDireccion;
    }
    public void setFkDireccion(int fkDireccion) {
        this.fkDireccion = fkDireccion;
    }

    public String getTelefono() {
        return telefono;
    }
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
    //Datos de las foraneas padre
    public String getNombres() {
        return nombres;
    }
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getSexo() {
        return sexo;
    }
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    
    public String getDireccionCompleta() {
        return direccionCompleta;
    }
    public void setDireccionCompleta(String direccionCompleta) {
        this.direccionCompleta = direccionCompleta;
    }

    //Datos de Usuario y Rol
        public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
    public String getUsuario() {
        return usuario;
    }
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public int getIdRol() {
        return idRol;
    }
    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }
    
    public String getRol() {
        return rol;
    }
    public void setRol(String rol) {
        this.rol = rol;
    }
}
