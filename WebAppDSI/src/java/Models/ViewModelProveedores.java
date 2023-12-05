/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author CUELLAR
 */
public class ViewModelProveedores {
    
    //Declaración de atributos
    //Utilizar camelCase para que java no se ponga renuente
    private int idProveedor;
    private String nombreProveedor;
    private int fkDireccion;
    private String telefono;
    private String correo;
    
    public int getIdProveedor() {
        return idProveedor;
    }
    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public String getNombreProveedor() {
        return nombreProveedor;
    }
    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
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
}
