/**
 * 
 */
package edu.aptech.vn.action.admin;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

/**
 * @author BinhHC
 * 
 */
@Namespace("/admin/user")
public class UserAction extends edu.aptech.vn.action.UserAction {

	@Action(value = "list", results = { @Result(name = "success", location = "list.jsp") })
	public String list() {
		try {
			users = session.createQuery("from User").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	@Action(value = "add", results = { @Result(name = "success", location = "add.jsp") })
	public String add() {

		return SUCCESS;
	}

	@Action(value = "doadd", results = { @Result(name = "success", type = "redirect", location = "list") })
	public String addAction() {
		try {
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}

	}
}
