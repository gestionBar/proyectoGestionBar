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
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
/*import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;/*

/**
 *
 * @author Rubie
 */
@Entity
@Table(name = "producto_menu")
//@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ProductoMenu.findAll", query = "SELECT p FROM ProductoMenu p")})
public class ProductoMenu implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    private ProductoMenuPK productoMenuPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "precio")
    private int precio;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "url_imagen")
    private String urlImagen;
    @JoinColumn(name = "categoriaProducto", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Categoria categoriaProducto;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idProducto")
    private List<DetallePedido> detallePedidoList;

    public ProductoMenu() {
    }

    public ProductoMenu(ProductoMenuPK productoMenuPK) {
        this.productoMenuPK = productoMenuPK;
        
    }
   
    public ProductoMenu(ProductoMenuPK productoMenuPK, String descripcion, int precio, String urlImagen, Categoria categoria) {
        this.productoMenuPK = productoMenuPK;
        this.descripcion = descripcion;
        this.precio = precio;
        this.urlImagen = urlImagen;
        this.categoriaProducto = categoria;
    }

    public ProductoMenu(int idProductomenu, String nombreProducto) {
        this.productoMenuPK = new ProductoMenuPK(idProductomenu, nombreProducto);
    }

    public ProductoMenuPK getProductoMenuPK() {
        return productoMenuPK;
    }

    public void setProductoMenuPK(ProductoMenuPK productoMenuPK) {
        this.productoMenuPK = productoMenuPK;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getUrlImagen() {
        return urlImagen;
    }

    public void setUrlImagen(String urlImagen) {
        this.urlImagen = urlImagen;
    }

    public Categoria getCategoriaProducto() {
        return categoriaProducto;
    }

    public void setCategoriaProducto(Categoria categoriaProducto) {
        this.categoriaProducto = categoriaProducto;
    }

    //@XmlTransient
    public List<DetallePedido> getDetallePedidoList() {
        return detallePedidoList;
    }

    public void setDetallePedidoList(List<DetallePedido> detallePedidoList) {
        this.detallePedidoList = detallePedidoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productoMenuPK != null ? productoMenuPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductoMenu)) {
            return false;
        }
        ProductoMenu other = (ProductoMenu) object;
        if ((this.productoMenuPK == null && other.productoMenuPK != null) || (this.productoMenuPK != null && !this.productoMenuPK.equals(other.productoMenuPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu[ productoMenuPK=" + productoMenuPK + " ]";
    }
    
}
