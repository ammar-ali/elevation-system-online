/**
 * 
 */
package edu.aptech.vn.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ModelDriven;

import edu.aptech.vn.model.User;

/**
 * @author BinhHC
 *
 */
@Namespace("/")
public class LoginAction extends BaseAction implements ModelDriven {
	/*protected String username;
	protected String password;*/
	protected User user = new User();
	
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
        /*
		if ("admin".equals(user.getUsername()) && "passw0rd".equals(user.getPassword())) {
			Map session = ActionContext.getContext().getSession();
			session.put("admin", "true");
			
			return SUCCESS;
		}*/
		return SUCCESS;
	}
	
	@Action(value = "login", results={
            @Result(name="success", location="login.jsp")
    })
	public String login() throws Exception {
		
		return SUCCESS;
	}

	@Action(value = "dologin", results={
            @Result(name="success", type="redirect", location="index")
    })
	public String doLogin() {

		return SUCCESS;
	}
	
	@Action(value = "logout", results={
            @Result(name="success", type="redirect", location="index")
    })
	public String logOut() throws Exception {
		 
		return SUCCESS;
	}

	@Action(value = "register", results={
            @Result(name="success", location="register.jsp")
    })
	public String register() throws Exception {

		return SUCCESS;
	}
	
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
	
}
