package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.PersonaUsuario;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(RolUsuario.class)
public class RolUsuario_ { 

    public static volatile SingularAttribute<RolUsuario, String> descripcion;
    public static volatile SingularAttribute<RolUsuario, Integer> idRol;
    public static volatile SingularAttribute<RolUsuario, String> nombre;
    public static volatile ListAttribute<RolUsuario, PersonaUsuario> personaUsuarioList;

}