package edu.aptech.vn.model;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.sql.Timestamp;
import java.util.Collection;

/**
 * User: LongDH
 * Date: 11/20/12
 * Time: 3:53 PM
 */
@Entity
public class Gallery {
    private Integer id;

    @javax.persistence.Column(name = "id")
    @Id
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

        Gallery gallery = (Gallery) o;

        if (created != null ? !created.equals(gallery.created) : gallery.created != null) return false;
        if (id != null ? !id.equals(gallery.id) : gallery.id != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (created != null ? created.hashCode() : 0);
        return result;
    }

    private Collection<Image> images;

    @OneToMany(mappedBy = "gallery")
    public Collection<Image> getImages() {
        return images;
    }

    public void setImages(Collection<Image> images) {
        this.images = images;
    }

    private Collection<Product> products;

    @OneToMany(mappedBy = "gallery")
    public Collection<Product> getProducts() {
        return products;
    }

    public void setProducts(Collection<Product> products) {
        this.products = products;
    }

    private Collection<Project> projects;

    @OneToMany(mappedBy = "gallery")
    public Collection<Project> getProjects() {
        return projects;
    }

    public void setProjects(Collection<Project> projects) {
        this.projects = projects;
    }
}
