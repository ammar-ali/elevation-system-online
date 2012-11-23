/**
 * 
 */
package edu.aptech.vn.action.admin;

import edu.aptech.vn.model.Country;
import edu.aptech.vn.model.User;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ModelDriven;

import java.util.ArrayList;
import java.util.List;

/**
 * @author BinhHC
 * 
 */
@Namespace("/admin/user")
public class UserAction extends BaseAction implements ModelDriven {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3255656035736585211L;
	private List<Country> countries = new ArrayList<Country>();
	private List<User> users = new ArrayList<User>();
    private User user = new User();
	@Action(value = "list", results = { @Result(name = "success", location = "list.jsp") })
	public String list() {
		try {
			users = db.createQuery("from User").list();
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

	@Action(value = "doadd", results = { @Result(name = "success", type = "redirect", location = "list") })
	public String addAction() {
		try {
			db.beginTransaction();
			user.setPassword(md5(user.getPassword()));
			db.save(user);
			db.getTransaction().commit();
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
		// TODO Auto-generated method stub
		return user;
	}

}
