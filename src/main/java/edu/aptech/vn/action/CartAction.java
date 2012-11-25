/**
 * 
 */
package edu.aptech.vn.action;

import edu.aptech.vn.model.*;
import edu.aptech.vn.utils.ShoppingCart;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import java.util.ArrayList;
import java.util.List;

@Namespace("/cart")
public class CartAction extends BaseAction {
	private List countries = new ArrayList();
	private List payments = new ArrayList();

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp")
    })
	public String execute() throws Exception {
        return SUCCESS;
    }

    @Action(value = "add", results={
        @Result(name="success", location="/cart/", type = "redirect")
    })
	public String add() throws Exception {
		getCart().add(Integer.parseInt(getParam("id")), Integer.parseInt(getParam("q")));
		return SUCCESS;
	}

    @Action(value = "remove", results={
        @Result(name="success", location="/cart/", type = "redirect")
    })
	public String remove() throws Exception {
		getCart().remove(Integer.parseInt(getParam("id")));
		return SUCCESS;
	}

    @Action(value = "checkout", results={
        @Result(name="success", location="checkout.jsp"),
        @Result(name="home", location="/", type = "redirect"),
        @Result(name="error", location="/account/", type = "redirect")
    })
	public String checkout() throws Exception {
		if (!AccountAction.isLogged()) return ERROR;
		if (getCart().getProducts().size() == 0) return "home";

		countries = db.createQuery("from Country").list();
		payments = db.createQuery("from Payment").list();
		return SUCCESS;
	}

	@Action(value = "pay", results = {
			@Result(name = "success", location = "/account/", type = "redirect"),
			@Result(name = "home", location = "/", type = "redirect")
	})
	public String pay() throws Exception {
		if (!AccountAction.isLogged()) return SUCCESS;
		if (getCart().getProducts().size() == 0) return "home";

		Order order = new Order();
        order.setUser((User) getSession("user"));
        order.setPayment((Payment) db.get(Payment.class, Integer.parseInt(getParam("payment_id"))));
        order.setCountry((Country) db.get(Country.class, Integer.parseInt(getParam("country_id"))));
		order.getOrderProducts().addAll(getCart().getProducts().values());

		order.setName(getParam("name"));
		order.setAddress(getParam("address"));
		order.setPhone(getParam("phone"));
		order.setCity(getParam("city"));

		for (OrderProduct op : getCart().getProducts().values()) {
			op.setOrder(order);
		}

        db.beginTransaction();
        System.out.println(db.save(order));
        db.getTransaction().commit();

		getCart().getProducts().clear();

		return SUCCESS;
	}

	private ShoppingCart getCart() {
		if (getSession("cart") == null) {
			setSession("cart", new ShoppingCart());
		}
		return (ShoppingCart) getSession("cart");
	}

	public List getCountries() {
		return countries;
	}

	public void setCountries(List countries) {
		this.countries = countries;
	}

	public List getPayments() {
		return payments;
	}

	public void setPayments(List payments) {
		this.payments = payments;
	}
}
