/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author CUELLAR
 */
public class ViewModelFormasPago {
    
    //Declaración de atributos
    //Utilizar camelCase para que java no se ponga renuente
    private int idFormaPago;
    private String formaPago;
    
    public int getIdFormaPago() {
        return idFormaPago;
    }
    public void setIdFormaPago(int idFormaPago) {
        this.idFormaPago = idFormaPago;
    }

    public String getFormaPago() {
        return formaPago;
    }
    public void setFormaPago(String formaPago) {
        this.formaPago = formaPago;
    }
}
