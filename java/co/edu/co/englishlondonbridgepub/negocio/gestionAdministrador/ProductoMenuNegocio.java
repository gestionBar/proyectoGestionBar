/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.negocio.gestionAdministrador;

import co.edu.co.englishlondonbridgepub.datos.dao.ProductoMenuDao;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rubie
 */
public class ProductoMenuNegocio {

    private ProductoMenuDao productoMenuDao;

    public ProductoMenuNegocio(ProductoMenuDao productoMenuDao) {
        this.productoMenuDao = productoMenuDao;
    }

    
    
    /* Método para realizar el guardado de un producto Cliente en la base de Datos*/
    public boolean guardarProducto(ProductoMenu   producto) {
     boolean rta =    productoMenuDao.guardarProducto(producto);
     return rta;
    }
    
   
    /*Método para trael de la base de datos la lista de productos registrados*/
    public List<ProductoMenu> getPersonaEmpleado() {
        List<ProductoMenu> productoMenu = new ArrayList<ProductoMenu>();

        try {
            productoMenu = productoMenuDao.getProductos();

        } catch (Exception e) {
            e.printStackTrace();
            productoMenu = null;
        }
        return productoMenu;
    }

}