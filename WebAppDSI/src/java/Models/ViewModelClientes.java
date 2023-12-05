/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author CUELLAR
 */
public class ViewModelClientes {
    
    //Declaración de atributos
    //Utilizar camelCase para que java no se ponga renuente
    private int idCliente;
    private int fkPersona;
    private String correo;
    
    public int getIdCliente() {
        return idCliente;
    }
    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getFkPersona() {
        return fkPersona;
    }
    public void setFkPersona(int fkPersona) {
        this.fkPersona = fkPersona;
    }

    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }
}
