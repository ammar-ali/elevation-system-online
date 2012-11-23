package edu.aptech.vn.model;

import javax.persistence.*;

/**
 * User: LongDH
 * Date: 11/20/12
 * Time: 4:49 PM
 */
@Table(name = "order_product")
@Entity
@AssociationOverrides({
        @AssociationOverride(name = "pk.order",
                joinColumns = @JoinColumn(name = "order_id")),
        @AssociationOverride(name = "pk.product",
                joinColumns = @JoinColumn(name = "product_id")) })
public class OrderProduct {
    private OrderProductId pk = new OrderProductId();

    @EmbeddedId
    public OrderProductId getPk() {
        return pk;
    }

    public void setPk(OrderProductId pk) {
        this.pk = pk;
    }

    @Transient
    public Order getOrder() {
        return pk.getOrder();
    }

    public void setOrder(Order order) {
        getPk().setOrder(order);
    }

    @Transient
    public Product getProduct() {
        return pk.getProduct();
    }

    public void setProduct(Product product) {
        getPk().setProduct(product);
    }

    private Integer quantity;

    @javax.persistence.Column(name = "quantity")
    @Basic
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderProduct that = (OrderProduct) o;

        if (getOrder() != null ? !getOrder().equals(that.getOrder()) : that.getOrder() != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;
        if (getProduct() != null ? !getProduct().equals(that.getProduct()) : that.getProduct() != null) return false;
        if (quantity != null ? !quantity.equals(that.quantity) : that.quantity != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = getOrder() != null ? getOrder().hashCode() : 0;
        result = 31 * result + (getProduct() != null ? getProduct().hashCode() : 0);
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        return result;
    }

    @Embeddable
    private class OrderProductId extends BaseModel {
        private Order order;
        private Product product;

        @ManyToOne
        public Order getOrder() {
            return order;
        }

        public void setOrder(Order order) {
            this.order = order;
        }

        @ManyToOne
        public Product getProduct() {
            return product;
        }

        public void setProduct(Product product) {
            this.product = product;
        }

        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;

            OrderProductId that = (OrderProductId) o;

            if (order != null ? !order.equals(that.order) : that.order != null) return false;
            if (product != null ? !product.equals(that.product) : that.product != null)
                return false;

            return true;
        }

        public int hashCode() {
            int result;
            result = (order != null ? order.hashCode() : 0);
            result = 31 * result + (product != null ? product.hashCode() : 0);
            return result;
        }
    }
}
