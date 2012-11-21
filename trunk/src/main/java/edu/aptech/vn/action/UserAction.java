/**
 * 
 */
package edu.aptech.vn.action;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.opensymphony.xwork2.ModelDriven;

import edu.aptech.vn.model.User;
import edu.aptech.vn.utils.HibernateUtil;

/**
 * @author BinhHC
 *
 */
public class UserAction extends BaseAction implements ModelDriven {
	protected User user = new User();
	protected List<User> users = new ArrayList<User>();
	protected Session session = HibernateUtil.getSession().openSession();
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param users the users to set
	 */
	public void setUsers(List<User> users) {
		this.users = users;
	}

	/**
	 * @return the users
	 */
	public List<User> getUsers() {
		return users;
	}

}
