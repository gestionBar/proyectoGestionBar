package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.FacturaPedido;
import co.edu.co.englishlondonbridgepub.datos.dto.Mesa;
import co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(DetallePedido.class)
public class DetallePedido_ { 

    public static volatile SingularAttribute<DetallePedido, Date> fecha;
    public static volatile SingularAttribute<DetallePedido, Integer> precio;
    public static volatile SingularAttribute<DetallePedido, Integer> totalVP;
    public static volatile SingularAttribute<DetallePedido, Mesa> idMesa;
    public static volatile ListAttribute<DetallePedido, FacturaPedido> facturaPedidoList;
    public static volatile SingularAttribute<DetallePedido, Date> hora;
    public static volatile SingularAttribute<DetallePedido, Integer> estadoPedido;
    public static volatile SingularAttribute<DetallePedido, ProductoMenu> idProducto;
    public static volatile SingularAttribute<DetallePedido, Integer> idPedido;
    public static volatile SingularAttribute<DetallePedido, Integer> cantidadProducto;
    public static volatile SingularAttribute<DetallePedido, Mesa> idPersona;
    public static volatile SingularAttribute<DetallePedido, String> nombreProducto;

}