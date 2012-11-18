/**
 * 
 */
package edu.aptech.vn.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import edu.aptech.vn.dao.FeedbackDAO;
import edu.aptech.vn.model.Feedback;

/**
 * @author BinhHC
 * 
 */
public class FeedbackAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(FeedbackAction.class);
	private Integer id;
	private String name;
	private String email;
	private String description;
	private Integer rating;
	
	Feedback feedback = new Feedback();
	List<Feedback> feedbacks = new ArrayList<Feedback>();
	FeedbackDAO dao = new FeedbackDAO();

	public Object getModel() {
		// TODO Auto-generated method stub
		return feedback;
	}

	public String execute() throws Exception {

		logger.info("Feedback param: " + feedback.getName());
		//Feedback feedback = new Feedback();
		/*feedback.setName(name);
		feedback.setEmail(email);
		feedback.setDescription(description);
		feedback.setRating(rating);*/
		System.out.println(name);
		dao.addFeedback(feedback);
		return SUCCESS;
	}

	public String listFeedbacks() {
		feedbacks = dao.listFeedbacks();
		return SUCCESS;
	}

	public Feedback getFeedback() {
		return feedback;
	}

	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}

	public List<Feedback> getFeedbacks() {
		return feedbacks;
	}

	public void setFeedbacks(List<Feedback> feedbacks) {
		this.feedbacks = feedbacks;
	}
}
