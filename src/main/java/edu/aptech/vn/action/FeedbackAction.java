/**
 * 
 */
package edu.aptech.vn.action;

import com.opensymphony.xwork2.ModelDriven;
import edu.aptech.vn.dao.FeedbackDAO;
import edu.aptech.vn.model.Feedback;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import java.util.ArrayList;
import java.util.List;

/**
 * @author BinhHC
 * 
 */
@Namespace("/feedback")
public class FeedbackAction extends BaseAction implements ModelDriven {
	private static final Logger logger = Logger.getLogger(FeedbackAction.class);
	
	protected Feedback feedback = new Feedback();
	protected List<Feedback> feedbacks = new ArrayList<Feedback>();
	protected FeedbackDAO dao = new FeedbackDAO();

	public Object getModel() {
		// TODO Auto-generated method stub
		return feedback;
	}

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp")
    })
	public String execute() throws Exception {
    	feedbacks = dao.listFeedbacks();
		return SUCCESS;
	}

    @Action(value = "add", results={
            @Result(name="success", location="list.jsp")
    })
	public String add() throws Exception {

		logger.info("Feedback param: " + feedback.getName());
		//Feedback feedback = new Feedback();
		/*feedback.setName(name);
		feedback.setEmail(email);
		feedback.setDescription(description);
		feedback.setRating(rating);*/
		dao.addFeedback(feedback);
		return SUCCESS;
	}

    @Action(value = "list", results={
            @Result(name="success", location="list.jsp")
    })
	public String list() {
		feedbacks = dao.listFeedbacks();
		return SUCCESS;
	}

    @Action(value = "view", results={
            @Result(name="success", location="view.jsp")
    })
    public String view() {
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
