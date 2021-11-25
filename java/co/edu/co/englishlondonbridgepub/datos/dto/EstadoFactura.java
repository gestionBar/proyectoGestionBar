/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.datos.dto;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
/*import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;*/

/**
 *
 * @author Rubie
 */
@Entity
@Table(name = "estado_factura")
//@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EstadoFactura.findAll", query = "SELECT e FROM EstadoFactura e")})
public class EstadoFactura implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idEstadoFactura")
    private Integer idEstadoFactura;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "descripcion")
    private String descripcion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "estadoFactura")
    private List<FacturaPedido> facturaPedidoList;

    public EstadoFactura() {
    }

    public EstadoFactura(Integer idEstadoFactura) {
        this.idEstadoFactura = idEstadoFactura;
    }

    public EstadoFactura(Integer idEstadoFactura, String nombre, String descripcion) {
        this.idEstadoFactura = idEstadoFactura;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public Integer getIdEstadoFactura() {
        return idEstadoFactura;
    }

    public void setIdEstadoFactura(Integer idEstadoFactura) {
        this.idEstadoFactura = idEstadoFactura;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

   // @XmlTransient
    public List<FacturaPedido> getFacturaPedidoList() {
        return facturaPedidoList;
    }

    public void setFacturaPedidoList(List<FacturaPedido> facturaPedidoList) {
        this.facturaPedidoList = facturaPedidoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idEstadoFactura != null ? idEstadoFactura.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EstadoFactura)) {
            return false;
        }
        EstadoFactura other = (EstadoFactura) object;
        if ((this.idEstadoFactura == null && other.idEstadoFactura != null) || (this.idEstadoFactura != null && !this.idEstadoFactura.equals(other.idEstadoFactura))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.edu.co.englishlondonbridgepub.datos.dto.EstadoFactura[ idEstadoFactura=" + idEstadoFactura + " ]";
    }
    
}
