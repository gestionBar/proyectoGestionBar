package co.edu.co.englishlondonbridgepub.datos.dao;
import co.edu.co.englishlondonbridgepub.datos.Conexion;
import co.edu.co.englishlondonbridgepub.datos.dto.Categoria;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu;
import co.edu.co.englishlondonbridgepub.datos.dto.FacturaPedidoPK;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenuPK;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoMenuDao implements Serializable {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;

    /* Método para realizar el guardado de un producto Cliente en la base de Datos*/
    public boolean guardarProducto(ProductoMenu producto, ProductoMenuPK productoM, Categoria categoria) {

        boolean rta = false;
        Conexion conexion = new Conexion();
        Connection con = null;
        PreparedStatement ps = null;

        try {

            con = conexion.conectar("ProductoMenuDao.guardarProducto");
            String sql = "INSERT INTO producto_menu (idProducto_menu, nombreProducto, descripcion, precio, url_imagen, categoriaProducto) VALUES (NULL, ?, ?, ?, ?, ?)";

            ps = con.prepareStatement(sql);

            ps.setString(1, productoM.getNombreProducto());
            ps.setString(2, producto.getDescripcion());
            ps.setInt(3, producto.getPrecio());
            ps.setString(4, producto.getUrlImagen());
            ps.setInt(5, categoria.getId());

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
        String sql = "SELECT  p.idProducto_menu, p.nombreProducto, p.descripcion, p.precio, p.url_imagen, c.id, c.nombre, c.descripcion\n"
                + "FROM producto_menu p JOIN categoria c ON (p.categoriaProducto = c.id)\n"
                + "ORDER BY p.nombreProducto";

        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rst = ps.executeQuery();

        while (rst.next()) {

            ProductoMenuPK producto = new ProductoMenuPK();
            ProductoMenu productoMenu = new ProductoMenu();
            Categoria categoria = new Categoria();

            producto.setIdProductomenu(rst.getInt(1));
            producto.setNombreProducto(rst.getString(2));
            productoMenu.setProductoMenuPK(producto);

            productoMenu.setDescripcion(rst.getString(3));
            productoMenu.setPrecio(rst.getInt(4));
            productoMenu.setUrlImagen(rst.getString(5));

            categoria.setId(rst.getInt(6));
            categoria.setNombre(rst.getString(7));
            categoria.setDescripcion(rst.getString(8));
            productoMenu.setCategoriaProducto(categoria);

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

    public List<Categoria> getCategorias() throws Exception {
        List<Categoria> categorias = new ArrayList<Categoria>();

        Conexion conexion = new Conexion();
        Connection con = conexion.conectar("ProductoMenuDao.getCategorias");
        String sql = "Select * FROM categoria ORDER BY nombre";

        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rst = ps.executeQuery();

        while (rst.next()) {
            Categoria categoria = new Categoria();
            categoria.setId(rst.getInt(1));
            categoria.setNombre(rst.getString("nombre"));
            categoria.setDescripcion(rst.getString(3));

            categorias.add(categoria);

        }

        rst.close();
        rst = null;

        ps.close();
        ps = null;

        con.close();
        con = null;

        return categorias;
    }

    public boolean borrarProdcuto(ProductoMenu producto, ProductoMenuPK productoM, Categoria categoria) {
        boolean rta = false;
        Conexion conexion = new Conexion();
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = conexion.conectar("ProductoMenuDao.borrarProducto");
            String sql = "DELETE FROM producto_menu WHERE id= " + producto.getProductoMenuPK() + "";
            ps = con.prepareStatement(sql);
            if (rta) {
                ps.executeUpdate();
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return rta;
    }

    public boolean editarProducto(ProductoMenu producto, ProductoMenuPK productoM, Categoria categoria) {
        boolean rta = false;
        Conexion conexion = new Conexion();
        Connection con = null;
        PreparedStatement ps = null;
        if ( producto != null && productoM.getIdProductomenu() > 0) {
            try {

                con = conexion.conectar("ProductoMenuDao.guardarProducto");
                String sql = "INSERT INTO producto_menu (idProducto_menu, nombreProducto, descripcion, precio, url_imagen, categoriaProducto) VALUES (NULL, ?, ?, ?, ?, ?)";

                ps = con.prepareStatement(sql);

                ps.setString(1, productoM.getNombreProducto());
                ps.setString(2, producto.getDescripcion());
                ps.setInt(3, producto.getPrecio());
                ps.setString(4, producto.getUrlImagen());
                ps.setInt(5, categoria.getId());

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
        return false;
    }
}
