package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.Categoria;
import co.edu.co.englishlondonbridgepub.datos.dto.DetallePedido;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenuPK;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(ProductoMenu.class)
public class ProductoMenu_ { 

    public static volatile SingularAttribute<ProductoMenu, String> descripcion;
    public static volatile ListAttribute<ProductoMenu, DetallePedido> detallePedidoList;
    public static volatile SingularAttribute<ProductoMenu, Integer> precio;
    public static volatile SingularAttribute<ProductoMenu, ProductoMenuPK> productoMenuPK;
    public static volatile SingularAttribute<ProductoMenu, String> urlImagen;
    public static volatile SingularAttribute<ProductoMenu, Categoria> categoriaProducto;

}