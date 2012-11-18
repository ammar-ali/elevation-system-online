/**
 * 
 */
package edu.aptech.vn.action;

import com.opensymphony.xwork2.ActionContext;

import java.util.Map;

/**
 * @author BinhHC
 *
 */
public class LoginAction extends BaseAction {
	private String username;
	private String password;
	
	public String execute() throws Exception {
		if ("admin".equals(username) && "passw0rd".equals(password)) {
			Map session = ActionContext.getContext().getSession();
			session.put("admin", "true");
			
			return SUCCESS;
		}
		return ERROR;
	}
	
	public String logOut() throws Exception {
		  Map session = ActionContext.getContext().getSession();
		  session.remove("admin");
		  return SUCCESS;
	}
	
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
}
