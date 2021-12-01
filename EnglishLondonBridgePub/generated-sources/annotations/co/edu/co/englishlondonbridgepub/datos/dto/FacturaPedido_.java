package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.Calificacion;
import co.edu.co.englishlondonbridgepub.datos.dto.DetallePedido;
import co.edu.co.englishlondonbridgepub.datos.dto.EstadoFactura;
import co.edu.co.englishlondonbridgepub.datos.dto.FacturaPedidoPK;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(FacturaPedido.class)
public class FacturaPedido_ { 

    public static volatile SingularAttribute<FacturaPedido, Date> fecha;
    public static volatile SingularAttribute<FacturaPedido, Integer> totalVP;
    public static volatile SingularAttribute<FacturaPedido, Date> hora;
    public static volatile SingularAttribute<FacturaPedido, EstadoFactura> estadoFactura;
    public static volatile ListAttribute<FacturaPedido, Calificacion> calificacionList;
    public static volatile SingularAttribute<FacturaPedido, DetallePedido> idPedido;
    public static volatile SingularAttribute<FacturaPedido, FacturaPedidoPK> facturaPedidoPK;

}