/**
 * 
 */
package edu.aptech.vn.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import edu.aptech.vn.model.Country;
import edu.aptech.vn.model.Order;
import edu.aptech.vn.model.User;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import java.util.ArrayList;
import java.util.List;

@Namespace("/account")
public class AccountAction extends BaseAction implements ModelDriven {
    private User user = new User();
	private List countries = new ArrayList();
	private List userOrders = new ArrayList();
	private Order order = new Order();

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp"),
        @Result(name="error", location="login.jsp")
    })
	public String execute() throws Exception {
        if (AccountAction.isLogged()) {
			countries = db.createQuery("from Country").list();
			Criteria criteria = db.createCriteria(Order.class);
			criteria.add(Restrictions.eq("user_id", ((User) getSession("user")).getId()));
			userOrders = criteria.list();
			if (getParam("name") != null) {
				try {
					User u = (User) getSession("user");
					db.beginTransaction();
					if (getParam("password") != null && getParam("password").length() > 1) user.setPassword(md5(user.getPassword()));
					else user.setPassword(u.getPassword());

					user.setId(u.getId());
					user.setUsername(u.getUsername());
					user.setCountry((Country) db.get(Country.class, Integer.parseInt(getParam("country_id"))));
					db.update(user);
					db.getTransaction().commit();

					setSession("user", db.get(User.class, u.getId()));
					addActionMessage("Update successful");
				} catch (Exception e) {
					addActionError("Error: " + e.getMessage());
				}
			}
            return SUCCESS;
        }
        return ERROR;
    }

    @Action(value = "login", results={
        @Result(name="success", location="/account", type = "redirect"),
        @Result(name="error", location="login.jsp")
    })
	public String login() throws Exception {
		if (getParam("register") != null) {
			try {
				db.beginTransaction();
				user.setPassword(md5(user.getPassword()));
				int id = new Integer(db.save(user).toString());
				db.getTransaction().commit();
				setSession("user", db.get(User.class, id));
				return SUCCESS;
			} catch (Exception e) {
				addActionError("Error: " + e.getMessage());
				return ERROR;
			}
		}

		Criteria criteria = db.createCriteria(User.class);
		criteria.add(Restrictions.eq("username", getParam("username")));
		criteria.add(Restrictions.eq("password", md5(getParam("password"))));
		User u = (User) criteria.uniqueResult();
		if (u != null) {
			setSession("user", u);
			return SUCCESS;
		}
		addActionError("Wrong username or password");
		return ERROR;
	}

    @Action(value = "logout", results={
        @Result(name="success", location="/", type = "redirect")
    })
	public String logout() throws Exception {
        setSession("user", null);
        return SUCCESS;
    }

    @Action(value = "order", results={
        @Result(name="success", location="order.jsp")
    })
	public String order() throws Exception {
		Criteria criteria = db.createCriteria(Order.class);
		criteria.add(Restrictions.eq("id", Integer.parseInt(getParam("id"))));
		criteria.add(Restrictions.eq("user_id", ((User) getSession("user")).getId()));
		order = (Order) criteria.uniqueResult();
		if (order == null) {
			addActionError("Order not found");
		}
		return SUCCESS;
	}

    @Override
    public Object getModel() {
        return user;
    }

    public static boolean isLogged() {
        return ActionContext.getContext().getSession().get("user") != null;
    }

	public List getCountries() {
		return countries;
	}

	public void setCountries(List countries) {
		this.countries = countries;
	}

	public List getUserOrders() {
		return userOrders;
	}

	public void setUserOrders(List userOrders) {
		this.userOrders = userOrders;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
}
