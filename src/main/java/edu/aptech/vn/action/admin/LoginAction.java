/**
 * 
 */
package edu.aptech.vn.action.admin;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionContext;

import edu.aptech.vn.model.User;

/**
 * @author BinhHC
 * 
 */
@Namespace("/admin")
public class LoginAction extends edu.aptech.vn.action.LoginAction {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

	@Override
	@Action(value = "dologin", results = { @Result(name = "success", type = "redirect", location = "index") })
	public String doLogin() {
		Criteria criteria = db.createCriteria(User.class);
		criteria.add(Restrictions.eq("username", getParam("username")));
		criteria.add(Restrictions.eq("password", md5(getParam("password"))));
		User u = (User) criteria.uniqueResult();
		if (u != null && u.getStatus() == 1 && u.getType() == 1) {
			setSession("admin", u);
			return SUCCESS;
		}
		return ERROR;
	}

	@Override
	@Action(value = "logout", results = { @Result(name = "success", type = "redirect", location = "index") })
	public String logOut() throws Exception {
		setSession("admin", null);
		return SUCCESS;
	}
	
	public static boolean isLogged() {
        return ActionContext.getContext().getSession().get("admin") != null;
    }

}
