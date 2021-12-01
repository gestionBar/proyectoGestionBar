package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.FacturaPedido;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(EstadoFactura.class)
public class EstadoFactura_ { 

    public static volatile SingularAttribute<EstadoFactura, String> descripcion;
    public static volatile SingularAttribute<EstadoFactura, Integer> idEstadoFactura;
    public static volatile ListAttribute<EstadoFactura, FacturaPedido> facturaPedidoList;
    public static volatile SingularAttribute<EstadoFactura, String> nombre;

}