package edu.aptech.vn.model;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

/**
* Author: LongDH
* Date: 11/24/12
* Time: 11:57 PM
*/
@Embeddable
public class OrderProductId extends BaseModel {
	private Order order = new Order();
	private Product product = new Product();

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
