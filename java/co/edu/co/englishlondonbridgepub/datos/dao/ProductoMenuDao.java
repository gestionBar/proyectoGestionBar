/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.co.englishlondonbridgepub.datos.dao;


import co.edu.co.englishlondonbridgepub.datos.Conexion;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu;
import co.edu.co.englishlondonbridgepub.datos.dto.FacturaPedidoPK;
import static co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu_.productoMenuPK;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rubie
 */
public class ProductoMenuDao implements Serializable{
    
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
     /* Método para realizar el guardado de un producto Cliente en la base de Datos*/
    public boolean guardarProducto(ProductoMenu    producto) {

        boolean rta = false;
        Conexion conexion = new Conexion();
        Connection con = null;
        PreparedStatement ps = null;

        try {

            con = conexion.conectar("ProductoMenuDao.guardarProducto");
            String sql = "INSERT INTO producto_menu (idProducto_menu, nombreProducto, descripcion, precio, url_imagen, categoriaProducto) VALUES (NULL, ?, ?, ?, ?, ?)";

            ps = con.prepareStatement(sql);

            ps.setString(1, producto.getProductoMenuPK().getNombreProducto());
            ps.setString(2, producto.getDescripcion());
            ps.setInt(3, producto.getPrecio());
            ps.setString(4, producto.getUrlImagen());
            ps.setInt(5, producto.getCategoriaProducto().getId());

            ps.execute();
            rta = true;

            ps.close();
            ps = null;

            con.close();
            con = null;

        } catch (Exception e) {

            e.printStackTrace();
            rta = false;
            ps = null;
            con = null;
        }

        return rta;
    }

    /* Método para traer los productos desde la base de Datos  */
    public List<ProductoMenu> getProductos() throws Exception {
        List<ProductoMenu> productos = new ArrayList<ProductoMenu>();

        Conexion conexion = new Conexion();
        Connection con = conexion.conectar("ProductoMenuDao.getProductos");
        String sql = "Select * FROM producto_menu";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rst = ps.executeQuery();

        while (rst.next()) {
            ProductoMenu productoMenu = new ProductoMenu();
            productoMenu.getProductoMenuPK().setIdProductomenu(1);
            productoMenu.setDescripcion(rst.getString(2));
            productoMenu.setPrecio(rst.getInt(3));
            productoMenu.setUrlImagen(rst.getString(4));
            productoMenu.getCategoriaProducto().setId(5);
          

            productos.add(productoMenu);
        }
        rst.close();
        rst = null;

        ps.close();
        ps = null;

        con.close();
        con = null;

        return productos;
    }
    
}