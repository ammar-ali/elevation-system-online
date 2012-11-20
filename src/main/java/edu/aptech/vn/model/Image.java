package edu.aptech.vn.model;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.sql.Timestamp;

/**
 * User: LongDH
 * Date: 11/20/12
 * Time: 3:53 PM
 */
@Entity
public class Image {
    private Integer id;

    @javax.persistence.Column(name = "id")
    @Id
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private String src;

    @javax.persistence.Column(name = "src")
    @Basic
    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    private String title;

    @javax.persistence.Column(name = "title")
    @Basic
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

        Image image = (Image) o;

        if (created != null ? !created.equals(image.created) : image.created != null) return false;
        if (id != null ? !id.equals(image.id) : image.id != null) return false;
        if (src != null ? !src.equals(image.src) : image.src != null) return false;
        if (status != null ? !status.equals(image.status) : image.status != null) return false;
        if (title != null ? !title.equals(image.title) : image.title != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (src != null ? src.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (created != null ? created.hashCode() : 0);
        return result;
    }

    private Gallery gallery;

    @ManyToOne
    @javax.persistence.JoinColumn(name = "gallery_id", referencedColumnName = "id", nullable = false)
    public Gallery getGallery() {
        return gallery;
    }

    public void setGallery(Gallery gallery) {
        this.gallery = gallery;
    }
}
