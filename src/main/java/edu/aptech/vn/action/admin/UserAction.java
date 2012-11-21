/**
 * 
 */
package edu.aptech.vn.action.admin;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import edu.aptech.vn.model.Country;

/**
 * @author BinhHC
 * 
 */
@Namespace("/admin/user")
public class UserAction extends edu.aptech.vn.action.UserAction {
	private List<Country> countries = new ArrayList<Country>();
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
	public String add() throws Exception {
		countries = session.createQuery("from Country").list();
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

	/**
	 * @param countries the countries to set
	 */
	public void setCountries(List<Country> countries) {
		this.countries = countries;
	}

	/**
	 * @return the countries
	 */
	public List<Country> getCountries() {
		return countries;
	}
}
