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
public class ViewModelVentas {
    
    //Declaración de atributos
    //Utilizar camelCase para que java no se ponga renuente
    private int idVenta;
    private int fkCliente;
    private int fkUsuario;
    private Date fechaVenta;
    
    public int getIdVenta() {
        return idVenta;
    }
    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public int getFkCliente() {
        return fkCliente;
    }
    public void setFkCliente(int fkCliente) {
        this.fkCliente = fkCliente;
    }

    public int getFkUsuario() {
        return fkUsuario;
    }
    public void setFkUsuario(int fkUsuario) {
        this.fkUsuario = fkUsuario;
    }

    public Date getFechaVenta() {
        return fechaVenta;
    }
    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }
}
