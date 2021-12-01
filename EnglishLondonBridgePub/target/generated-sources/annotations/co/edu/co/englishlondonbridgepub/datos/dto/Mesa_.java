package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.DetallePedido;
import co.edu.co.englishlondonbridgepub.datos.dto.PersonaUsuario;
import co.edu.co.englishlondonbridgepub.datos.dto.Reserva;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(Mesa.class)
public class Mesa_ { 

    public static volatile ListAttribute<Mesa, DetallePedido> detallePedidoList;
    public static volatile SingularAttribute<Mesa, String> estado;
    public static volatile SingularAttribute<Mesa, Integer> idMesa;
    public static volatile ListAttribute<Mesa, Reserva> reservaList;
    public static volatile ListAttribute<Mesa, DetallePedido> detallePedidoList1;
    public static volatile SingularAttribute<Mesa, PersonaUsuario> idPersona;

}