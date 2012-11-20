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
public class Payment extends BaseModel {
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

    private Integer status;

    @javax.persistence.Column(name = "status")
    @Basic
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Payment payment = (Payment) o;

        if (id != null ? !id.equals(payment.id) : payment.id != null) return false;
        if (name != null ? !name.equals(payment.name) : payment.name != null) return false;
        if (status != null ? !status.equals(payment.status) : payment.status != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        return result;
    }

    private List<Order> orders = new ArrayList<Order>();

    @OneToMany(mappedBy = "payment")
    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }
}
