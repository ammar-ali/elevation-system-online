/**
 * 
 */
package edu.aptech.vn.action;

import edu.aptech.vn.utils.ShoppingCart;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

@Namespace("/cart")
public class CartAction extends BaseAction {

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

	private ShoppingCart getCart() {
		if (getSession("cart") == null) {
			setSession("cart", new ShoppingCart());
		}
		return (ShoppingCart) getSession("cart");
	}
}
