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
/*		Session ss = HibernateUtil.getSession().openSession();
        Feedback feedback = new Feedback();
        feedback.setName("asd gsg");
        feedback.setEmail("a@bfd.com");
        feedback.setDescription("asd  fd hdfhngn fn34 y4ehrjtr");
        feedback.setRating(10);*/

//        session.beginTransaction();
//        System.out.println(session.save(feedback));
//        Feedback rs = (Feedback) session.get(Feedback.class, 2);
//        System.out.println(rs.getName());

//        session.getTransaction().commit();

/*        Criteria criteria = ss.createCriteria(Feedback.class);
        criteria.setProjection(Projections.avg("rating"));
        System.out.println(criteria.uniqueResult());*/
        
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
