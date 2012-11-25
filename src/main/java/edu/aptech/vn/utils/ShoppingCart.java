package edu.aptech.vn.utils;

import edu.aptech.vn.model.OrderProduct;
import edu.aptech.vn.model.Product;
import org.hibernate.Session;

import java.util.HashMap;
import java.util.Map;

/**
 * Author: LongDH
 * Date: 11/26/12
 * Time: 12:30 AM
 */
public class ShoppingCart {
	protected final Session db = HibernateUtil.getSession().openSession();
	private Map<Integer, OrderProduct> products = new HashMap<Integer, OrderProduct>();

	public void add(int id, int quantity) {
		Product p = (Product) db.get(Product.class, id);
		if (p == null) return;

		OrderProduct o = new OrderProduct();
		o.setProduct(p);
		o.setPrice(p.getPrice());
		if (products.get(id) == null) {
			o.setQuantity(quantity);
		} else {
			o.setQuantity(products.get(id).getQuantity() + quantity);
		}
		products.put(id, o);
	}

	public void remove(int id) {
		if (products.get(id) != null) {
			products.remove(id);
		}
	}

	public Map<Integer, OrderProduct> getProducts() {
		return products;
	}

	public float getTotal() {
		float total = 0;
		for (Map.Entry<Integer, OrderProduct> e : products.entrySet()) {
			total += e.getValue().getPrice() * e.getValue().getQuantity();
		}
		return total;
	}
}
