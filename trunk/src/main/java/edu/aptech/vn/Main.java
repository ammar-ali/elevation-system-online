package edu.aptech.vn;

import edu.aptech.vn.model.Feedback;
import edu.aptech.vn.utils.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;

/**
 * User: LongDH
 * Date: 11/16/12
 * Time: 5:43 PM
 */
public class Main {

	public static void main(String[] args) {
		Session session = HibernateUtil.getSession().openSession();
        Feedback feedback = new Feedback();
        feedback.setName("asd gsg");
        feedback.setEmail("a@bfd.com");
        feedback.setDescription("asd  fd hdfhngn fn34 y4ehrjtr");
        feedback.setRating(10);

//        session.beginTransaction();
//        System.out.println(session.save(feedback));
//        Feedback rs = (Feedback) session.get(Feedback.class, 2);
//        System.out.println(rs.getName());

//        session.getTransaction().commit();

        Criteria criteria = session.createCriteria(Feedback.class);
        criteria.setProjection(Projections.avg("rating"));
        System.out.println(criteria.uniqueResult());
	}
}
