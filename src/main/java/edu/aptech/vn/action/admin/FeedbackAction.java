/**
 * 
 */
package edu.aptech.vn.action.admin;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Query;

import com.opensymphony.xwork2.ModelDriven;

import edu.aptech.vn.model.Feedback;


/**
 * @author BinhHC
 *
 */
@Namespace("/admin/feedback")
public class FeedbackAction extends BaseAction implements ModelDriven {

	private static final Logger logger = Logger.getLogger(FeedbackAction.class);
	private Feedback feedback = new Feedback();
	private List<Feedback> feedbacks = new ArrayList<Feedback>();
	
	@Override
	@Action(value = "index", results={
	        @Result(name="success", location="feedback.jsp")
	    })
	public String execute() throws Exception {
		try {
			try {
				page = Integer.parseInt(getParam("page"));
			} catch (Exception e) {
			} finally {
				Query q = db.createQuery("from Feedback");
				paging(q.list().size());
				q.setFirstResult(offset);
				q.setMaxResults(PER_PAGE);
				feedbacks = q.list();
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
			return ERROR;
		}
		return SUCCESS;
	}

	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return feedback;
	}

	/**
	 * @return the feedback
	 */
	public Feedback getFeedback() {
		return feedback;
	}

	/**
	 * @param feedback the feedback to set
	 */
	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}

	/**
	 * @return the feedbacks
	 */
	public List<Feedback> getFeedbacks() {
		return feedbacks;
	}

	/**
	 * @param feedbacks the feedbacks to set
	 */
	public void setFeedbacks(List<Feedback> feedbacks) {
		this.feedbacks = feedbacks;
	}

		
}
