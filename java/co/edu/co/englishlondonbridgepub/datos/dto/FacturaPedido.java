/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.datos.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
/*import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;*/

/**
 *
 * @author Rubie
 */
@Entity
@Table(name = "factura_pedido")
//@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FacturaPedido.findAll", query = "SELECT f FROM FacturaPedido f")})
public class FacturaPedido implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected FacturaPedidoPK facturaPedidoPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @Basic(optional = false)
    @NotNull
    @Column(name = "hora")
    @Temporal(TemporalType.TIME)
    private Date hora;
    @Basic(optional = false)
    @NotNull
    @Column(name = "totalVP")
    private int totalVP;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idFactura")
    private List<Calificacion> calificacionList;
    @JoinColumn(name = "idPedido", referencedColumnName = "idPedido")
    @ManyToOne(optional = false)
    private DetallePedido idPedido;
    @JoinColumn(name = "estadoFactura", referencedColumnName = "idEstadoFactura")
    @ManyToOne(optional = false)
    private EstadoFactura estadoFactura;

    public FacturaPedido() {
    }

    public FacturaPedido(FacturaPedidoPK facturaPedidoPK) {
        this.facturaPedidoPK = facturaPedidoPK;
    }

    public FacturaPedido(FacturaPedidoPK facturaPedidoPK, Date fecha, Date hora, int totalVP) {
        this.facturaPedidoPK = facturaPedidoPK;
        this.fecha = fecha;
        this.hora = hora;
        this.totalVP = totalVP;
    }

    public FacturaPedido(int idFactura, int consecutivo) {
        this.facturaPedidoPK = new FacturaPedidoPK(idFactura, consecutivo);
    }

    public FacturaPedidoPK getFacturaPedidoPK() {
        return facturaPedidoPK;
    }

    public void setFacturaPedidoPK(FacturaPedidoPK facturaPedidoPK) {
        this.facturaPedidoPK = facturaPedidoPK;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Date getHora() {
        return hora;
    }

    public void setHora(Date hora) {
        this.hora = hora;
    }

    public int getTotalVP() {
        return totalVP;
    }

    public void setTotalVP(int totalVP) {
        this.totalVP = totalVP;
    }

   // @XmlTransient
    public List<Calificacion> getCalificacionList() {
        return calificacionList;
    }

    public void setCalificacionList(List<Calificacion> calificacionList) {
        this.calificacionList = calificacionList;
    }

    public DetallePedido getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(DetallePedido idPedido) {
        this.idPedido = idPedido;
    }

    public EstadoFactura getEstadoFactura() {
        return estadoFactura;
    }

    public void setEstadoFactura(EstadoFactura estadoFactura) {
        this.estadoFactura = estadoFactura;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (facturaPedidoPK != null ? facturaPedidoPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FacturaPedido)) {
            return false;
        }
        FacturaPedido other = (FacturaPedido) object;
        if ((this.facturaPedidoPK == null && other.facturaPedidoPK != null) || (this.facturaPedidoPK != null && !this.facturaPedidoPK.equals(other.facturaPedidoPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.edu.co.englishlondonbridgepub.datos.dto.FacturaPedido[ facturaPedidoPK=" + facturaPedidoPK + " ]";
    }
    
}
