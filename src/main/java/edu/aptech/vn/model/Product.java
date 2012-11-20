package edu.aptech.vn.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * User: LongDH
 * Date: 11/20/12
 * Time: 3:53 PM
 */
@Entity
public class Product {
    private Integer id;

    @javax.persistence.Column(name = "id")
    @Id
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private String name;

    @javax.persistence.Column(name = "name")
    @Basic
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String description;

    @javax.persistence.Column(name = "description")
    @Basic
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    private Float price;

    @javax.persistence.Column(name = "price")
    @Basic
    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    private Integer status;

    @javax.persistence.Column(name = "status")
    @Basic
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    private Timestamp created;

    @javax.persistence.Column(name = "created")
    @Basic
    public Timestamp getCreated() {
        return created;
    }

    public void setCreated(Timestamp created) {
        this.created = created;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Product product = (Product) o;

        if (created != null ? !created.equals(product.created) : product.created != null) return false;
        if (description != null ? !description.equals(product.description) : product.description != null) return false;
        if (id != null ? !id.equals(product.id) : product.id != null) return false;
        if (name != null ? !name.equals(product.name) : product.name != null) return false;
        if (price != null ? !price.equals(product.price) : product.price != null) return false;
        if (status != null ? !status.equals(product.status) : product.status != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (created != null ? created.hashCode() : 0);
        return result;
    }

    private Gallery gallery;

    @ManyToOne
    @JoinColumn(name = "gallery_id", referencedColumnName = "id")
    public Gallery getGallery() {
        return gallery;
    }

    public void setGallery(Gallery gallery) {
        this.gallery = gallery;
    }
}
