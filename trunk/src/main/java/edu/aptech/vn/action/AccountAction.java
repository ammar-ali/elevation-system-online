/**
 * 
 */
package edu.aptech.vn.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
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
    private List orders = new ArrayList();

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp"),
        @Result(name="error", location="login.jsp")
    })
	public String execute() throws Exception {
        if (AccountAction.isLogged()) {
            Criteria criteria = db.createCriteria(Order.class);
            criteria.add(Restrictions.eq("user_id", ((User) getSession().get("user")).getId()));
            orders = criteria.list();
            return SUCCESS;
        }
        return ERROR;
    }

    @Action(value = "login", results={
        @Result(name="success", location="/account", type = "redirect"),
        @Result(name="error", location="login.jsp")
    })
	public String login() throws Exception {
        Criteria criteria = db.createCriteria(User.class);
        criteria.add(Restrictions.eq("username", getParam("username")));
        criteria.add(Restrictions.eq("password", md5(getParam("password"))));
        User u = (User) criteria.uniqueResult();
        if (u != null) {
            getSession().put("user",u);
            return SUCCESS;
        }
        return ERROR;
    }

    @Action(value = "logout", results={
        @Result(name="success", location="/", type = "redirect")
    })
	public String logout() throws Exception {
        getSession().put("user", null);
        return SUCCESS;
    }

    @Override
    public Object getModel() {
        return user;
    }

    public static boolean isLogged() {
        return ActionContext.getContext().getSession().get("user") != null;
    }

    public List getOrders() {
        return orders;
    }

    public void setOrders(List orders) {
        this.orders = orders;
    }
}
