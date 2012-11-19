/**
 * 
 */
package edu.aptech.vn.dao;

import edu.aptech.vn.model.Feedback;
import edu.aptech.vn.utils.HibernateUtil;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;

/**
 * @author BinhHC
 * 
 */
public class FeedbackDAO extends BaseDAO {

	Session session = HibernateUtil.getSession().openSession();

	public void addFeedback(Feedback feedback) {
		session.beginTransaction();
		session.save(feedback);
		session.getTransaction().commit();
	}

	public List<Feedback> listFeedbacks() {
		List<Feedback> feedbacks = new ArrayList<Feedback>();
		try {
			feedbacks = session.createQuery("from Feedback").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return feedbacks;
	}
}
