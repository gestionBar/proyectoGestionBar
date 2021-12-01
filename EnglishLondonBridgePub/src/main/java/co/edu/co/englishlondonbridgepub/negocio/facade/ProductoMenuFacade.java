/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.negocio.facade;
import co.edu.co.englishlondonbridgepub.datos.dto.Categoria;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenuPK;
import co.edu.co.englishlondonbridgepub.negocio.gestionAdministrador.ProductoMenuNegocio;
import java.util.List;

/**
 *
 * @author Rubie
 */
public class ProductoMenuFacade {
    
    ProductoMenuNegocio productoMenuNegocio;;
    

    public ProductoMenuFacade() {
        productoMenuNegocio = new ProductoMenuNegocio();
    }
    
     /* Método que retorna si se registró un producto en la Base de Datos*/
    public boolean guardarProductos(ProductoMenu producto, ProductoMenuPK productoM,  Categoria categoria) {
        return productoMenuNegocio.guardarProducto(producto, productoM, categoria);
    }
    
    /*Método que retorna la lista de Categorías registradas en la base de datos*/
     public List<Categoria> getCategorias() {
        return productoMenuNegocio.getCategorias();
    }
    
    /*Método que retorna la lista de productos registrados  en la base de datos*/
    public List<ProductoMenu> getProductos() {
        return productoMenuNegocio.getProductos();
    }
    
        public boolean borrarProducto(ProductoMenu producto, ProductoMenuPK productoM,  Categoria categoria) {
        return productoMenuNegocio.borrarProducto(producto, productoM, categoria);
    }
        
            public boolean editarProductos(ProductoMenu producto, ProductoMenuPK productoM,  Categoria categoria) {
        return productoMenuNegocio.editarProductos(producto, productoM, categoria);
    }
    
}