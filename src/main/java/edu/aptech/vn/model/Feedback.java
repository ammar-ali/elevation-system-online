package edu.aptech.vn.model;

import edu.aptech.vn.utils.Const;

import javax.persistence.*;
import java.io.Serializable;

/**
 * User: LongDH
 * Date: 11/16/12
 * Time: 5:44 PM
 */
@Entity
@Table(name = "feedback", catalog = Const.DB)
public class Feedback extends BaseModel {
    private Integer id;
    private String name;
    private String email;
    private String description;
    private Integer rating;
    private Integer created;

    public Feedback() {}

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "rating")
    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    @Column(name = "[created]")
    public Integer getCreated() {
        return created;
    }

    public void setCreated(Integer created) {
        this.created = created;
    }
}
