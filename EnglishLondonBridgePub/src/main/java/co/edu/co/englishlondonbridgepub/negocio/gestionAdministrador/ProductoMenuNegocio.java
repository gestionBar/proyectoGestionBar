/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.negocio.gestionAdministrador;

import co.edu.co.englishlondonbridgepub.datos.dao.ProductoMenuDao;
import co.edu.co.englishlondonbridgepub.datos.dto.Categoria;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenuPK;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rubie
 */
public class ProductoMenuNegocio {

    private ProductoMenuDao productoMenuDao;

    public ProductoMenuNegocio() {
        productoMenuDao = new ProductoMenuDao();
    }

    /*Método que  retorna una lista de las categorías de productos que hay en la base de datos*/
    public List<Categoria> getCategorias() {
        List<Categoria> categorias = new ArrayList<Categoria>();

        try {
            categorias = productoMenuDao.getCategorias();

        } catch (Exception e) {
            e.printStackTrace();
            categorias = null;
        }
        return categorias;
    }

    /* Método para realizar el guardado de un producto  en la base de Datos*/
    public boolean guardarProducto(ProductoMenu producto, ProductoMenuPK productoM,  Categoria categoria) {
        boolean rta = productoMenuDao.guardarProducto(producto, productoM, categoria);
        return rta;
    }

    /*Método para trael de la base de datos la lista de productos registrados*/
    public List<ProductoMenu> getProductos() {
        List<ProductoMenu> productoMenu = new ArrayList<ProductoMenu>();

        try {
            productoMenu = productoMenuDao.getProductos();

        } catch (Exception e) {
            e.printStackTrace();
            productoMenu = null;
        }
        return productoMenu;
    }
    
        public boolean borrarProducto(ProductoMenu producto, ProductoMenuPK productoM,  Categoria categoria) {
        boolean rta = productoMenuDao.borrarProdcuto(producto, productoM, categoria);
        return rta;
    }
        
                public boolean editarProductos(ProductoMenu producto, ProductoMenuPK productoM,  Categoria categoria) {
        boolean rta = productoMenuDao.borrarProdcuto(producto, productoM, categoria);
        return rta;
    }


}
