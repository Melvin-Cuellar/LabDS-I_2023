/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author CUELLAR
 */
public class ViewModelUsuarios {
    
    //Declaración de atributos
    //Utilizar camelCase para que java no se ponga renuente
    private int idUsuario;
    private int fkEmpleado;
    private int fkRol;
    private String usuario;
    private String clave;
    
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getFkEmpleado() {
        return fkEmpleado;
    }
    public void setFkEmpleado(int fkEmpleado) {
        this.fkEmpleado = fkEmpleado;
    }

    public int getFkRol() {
        return fkRol;
    }
    public void setFkRol(int fkRol) {
        this.fkRol = fkRol;
    }

    public String getUsuario() {
        return usuario;
    }
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }
    public void setClave(String clave) {
        this.clave = clave;
    }
}
