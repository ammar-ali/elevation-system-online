package edu.aptech.vn.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * User: LongDH
 * Date: 11/20/12
 * Time: 3:53 PM
 */
@Entity
public class Country extends BaseModel {
    private Integer id;

    @javax.persistence.Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    private String iso2;

    @javax.persistence.Column(name = "iso2")
    @Basic
    public String getIso2() {
        return iso2;
    }

    public void setIso2(String iso2) {
        this.iso2 = iso2;
    }

    private String iso3;

    @javax.persistence.Column(name = "iso3")
    @Basic
    public String getIso3() {
        return iso3;
    }

    public void setIso3(String iso3) {
        this.iso3 = iso3;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Country country = (Country) o;

        if (id != null ? !id.equals(country.id) : country.id != null) return false;
        if (iso2 != null ? !iso2.equals(country.iso2) : country.iso2 != null) return false;
        if (iso3 != null ? !iso3.equals(country.iso3) : country.iso3 != null) return false;
        if (name != null ? !name.equals(country.name) : country.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (iso2 != null ? iso2.hashCode() : 0);
        result = 31 * result + (iso3 != null ? iso3.hashCode() : 0);
        return result;
    }

    private List<Order> orders = new ArrayList<Order>();

    @OneToMany(mappedBy = "country")
    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    private List<User> users = new ArrayList<User>();

    @OneToMany(mappedBy = "country")
    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
