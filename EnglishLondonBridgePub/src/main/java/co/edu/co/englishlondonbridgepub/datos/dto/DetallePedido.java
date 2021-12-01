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
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
/*import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;*/

/**
 *
 * @author Rubie
 */
@Entity
@Table(name = "detalle_pedido")
//@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DetallePedido.findAll", query = "SELECT d FROM DetallePedido d")})
public class DetallePedido implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idPedido")
    private Integer idPedido;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "nombreProducto")
    private String nombreProducto;
    @Basic(optional = false)
    @NotNull
    @Column(name = "cantidadProducto")
    private int cantidadProducto;
    @Basic(optional = false)
    @NotNull
    @Column(name = "precio")
    private int precio;
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
    @Basic(optional = false)
    @NotNull
    @Column(name = "estadoPedido")
    private int estadoPedido;
    @JoinColumn(name = "idMesa", referencedColumnName = "idMesa")
    @ManyToOne(optional = false)
    private Mesa idMesa;
    @JoinColumn(name = "idPersona", referencedColumnName = "idPersona")
    @ManyToOne(optional = false)
    private Mesa idPersona;
    @JoinColumn(name = "idProducto", referencedColumnName = "idProducto_menu")
    @ManyToOne(optional = false)
    private ProductoMenu idProducto;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPedido")
    private List<FacturaPedido> facturaPedidoList;

    public DetallePedido() {
    }

    public DetallePedido(Integer idPedido) {
        this.idPedido = idPedido;
    }

    public DetallePedido(Integer idPedido, String nombreProducto, int cantidadProducto, int precio, Date fecha, Date hora, int totalVP, int estadoPedido) {
        this.idPedido = idPedido;
        this.nombreProducto = nombreProducto;
        this.cantidadProducto = cantidadProducto;
        this.precio = precio;
        this.fecha = fecha;
        this.hora = hora;
        this.totalVP = totalVP;
        this.estadoPedido = estadoPedido;
    }

    public Integer getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(Integer idPedido) {
        this.idPedido = idPedido;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public int getCantidadProducto() {
        return cantidadProducto;
    }

    public void setCantidadProducto(int cantidadProducto) {
        this.cantidadProducto = cantidadProducto;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
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

    public int getEstadoPedido() {
        return estadoPedido;
    }

    public void setEstadoPedido(int estadoPedido) {
        this.estadoPedido = estadoPedido;
    }

    public Mesa getIdMesa() {
        return idMesa;
    }

    public void setIdMesa(Mesa idMesa) {
        this.idMesa = idMesa;
    }

    public Mesa getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(Mesa idPersona) {
        this.idPersona = idPersona;
    }

    public ProductoMenu getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(ProductoMenu idProducto) {
        this.idProducto = idProducto;
    }

    //@XmlTransient
    public List<FacturaPedido> getFacturaPedidoList() {
        return facturaPedidoList;
    }

    public void setFacturaPedidoList(List<FacturaPedido> facturaPedidoList) {
        this.facturaPedidoList = facturaPedidoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPedido != null ? idPedido.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DetallePedido)) {
            return false;
        }
        DetallePedido other = (DetallePedido) object;
        if ((this.idPedido == null && other.idPedido != null) || (this.idPedido != null && !this.idPedido.equals(other.idPedido))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.edu.co.englishlondonbridgepub.datos.dto.DetallePedido[ idPedido=" + idPedido + " ]";
    }
    
}
