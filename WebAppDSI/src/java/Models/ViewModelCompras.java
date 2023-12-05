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
public class ViewModelCompras {
    
    //Declaración de atributos
    //Utilizar camelCase para que java no se ponga renuente
    private int idCompra;
    private int fkProveedor;
    private int fkUsuario;
    private Date fechaCompra;
    
    public int getIdCompra() {
        return idCompra;
    }
    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }

    public int getFkProveedor() {
        return fkProveedor;
    }
    public void setFkProveedor(int fkProveedor) {
        this.fkProveedor = fkProveedor;
    }

    public int getFkUsuario() {
        return fkUsuario;
    }
    public void setFkUsuario(int fkUsuario) {
        this.fkUsuario = fkUsuario;
    }

    public Date getFechaCompra() {
        return fechaCompra;
    }
    public void setFechaCompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
    }
}
