/**
 * 
 */
package edu.aptech.vn.action.admin;

import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;

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
		System.out.println("Here we are");
		if ("admin".equals(user.getUsername())
				&& "passw0rd".equals(user.getPassword())) {
			Map session = ActionContext.getContext().getSession();
			session.put("admin", "true");

			return SUCCESS;
		}
		return ERROR;
	}

	@Override
	@Action(value = "logout", results={
            @Result(name="success", type="redirect", location="index")
    })
	public String logOut() throws Exception {
		Map session = ActionContext.getContext().getSession();
		session.remove("admin");
		return SUCCESS;
	}

}
