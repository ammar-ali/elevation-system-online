/**
 * 
 */
package edu.aptech.vn.action.admin;

import edu.aptech.vn.model.Country;
import edu.aptech.vn.model.User;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Query;

import com.opensymphony.xwork2.ModelDriven;

import java.util.ArrayList;
import java.util.List;

/**
 * @author BinhHC
 * 
 */
@Namespace("/admin/user")
public class UserAction extends BaseAction implements ModelDriven {
	private static final int PER_PAGE = 1;
	private static final Logger logger = Logger.getLogger(UserAction.class);
	/**
	 * 
	 */
	private static final long serialVersionUID = -3255656035736585211L;
	private List<Country> countries = new ArrayList<Country>();
	private List<User> users = new ArrayList<User>();
	private User user = new User();

	@Action(value = "index", results = { @Result(name = "success", location = "list.jsp") })
	public String execute() throws Exception {
		try {
			int page = 1;
			try {
				page = Integer.parseInt(getParam("page"));
			} catch (Exception e) {
				e.printStackTrace();
				logger.info(e.getMessage());
			} finally {
				Query q = db.createQuery("from User");
				q.setFirstResult(page * PER_PAGE - 1);
				q.setMaxResults(PER_PAGE);
				users = q.list();
			}
			// users = db.createQuery("from User").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	@Action(value = "add", results = { @Result(name = "success", location = "add.jsp") })
	public String add() throws Exception {
		countries = db.createQuery("from Country").list();
		return SUCCESS;
	}

	@Action(value = "edit", results = { @Result(name = "success", location = "edit.jsp") })
	public String edit() throws Exception {
		int id = Integer.parseInt(getParam("id"));
		try {
			user = (User) db.get(User.class, id);
			countries = db.createQuery("from Country").list();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
		}
		return ERROR;
	}

	@Action(value = "update", results = { @Result(name = "success", type = "redirect", location = "index") })
	public String update() throws Exception {
		try {
			if (user.getPassword().length() < 32) {
				user.setPassword(md5(user.getPassword()));
			}
			db.beginTransaction();
			db.update(user);
			db.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e.getMessage());
		}
		return ERROR;
	}

	@Action(value = "doadd", results = { @Result(name = "success", type = "redirect", location = "index") })
	public String addAction() {
		try {
			db.beginTransaction();
			user.setPassword(md5(user.getPassword()));
			user.setCountry((Country) db.get(Country.class,
					Integer.parseInt(getParam("country_id"))));
			db.save(user);
			db.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}

	}

	/**
	 * @param countries
	 *            the countries to set
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

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public Object getModel() {

		return user;
	}

}
