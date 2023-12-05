/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author CUELLAR
 */
public class ViewModelDirecciones {
    
    //Declaración de atributos
    //Utilizar camelCase para que java no se ponga renuente
    private int idDireccion;
    private String descripcionDireccion;
    private int fkDistrito;
    
    public int getIdDireccion() {
        return idDireccion;
    }
    public void setIdDireccion(int idDireccion) {
        this.idDireccion = idDireccion;
    }

    public String getDescripcionDireccion() {
        return descripcionDireccion;
    }
    public void setDescripcionDireccion(String descripcionDireccion) {
        this.descripcionDireccion = descripcionDireccion;
    }

    public int getFkDistrito() {
        return fkDistrito;
    }
    public void setFkDistrito(int fkDistrito) {
        this.fkDistrito = fkDistrito;
    }
}
