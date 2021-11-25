/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.negocio.facade;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu;
import co.edu.co.englishlondonbridgepub.negocio.gestionAdministrador.ProductoMenuNegocio;
import java.util.List;

/**
 *
 * @author Rubie
 */
public class ProductoMenuFacade {
    
    ProductoMenuNegocio menuProductonegocio;
    

    public ProductoMenuFacade(ProductoMenuNegocio menuProductonegocio) {
        this.menuProductonegocio = menuProductonegocio;
    }
    
      /* Método que retorna si se registró un cliente en la Base de Datos*/
    public boolean guardarPersonaCliente(ProductoMenu prodcutoMenu) {
        return menuProductonegocio.guardarProducto(prodcutoMenu);
    }

    /*Método que retorna la lista de clientes registrados en la base de datos*/
    public List<ProductoMenu> getPersonaCliente() {
        return menuProductonegocio.getPersonaEmpleado();
    }
    
}