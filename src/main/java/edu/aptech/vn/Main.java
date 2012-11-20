package edu.aptech.vn;

import edu.aptech.vn.model.User;
import edu.aptech.vn.utils.HibernateUtil;
import org.hibernate.Session;

/**
 * User: LongDH
 * Date: 11/16/12
 * Time: 5:43 PM
 */
public class Main {

	public static void main(String[] args) {
		Session session = HibernateUtil.getSession().openSession();
//        Feedback feedback = new Feedback();
//        feedback.setName("123asd gsg");
//        feedback.setEmail("5435a@bfd.com");
//        feedback.setDescription(" 64564asd  fd hdfhngn fn34 y4ehrjtr");
//        feedback.setRating(7);
//
//        session.beginTransaction();
//        System.out.println(session.save(feedback));
//        session.getTransaction().commit();
//
//        Feedback rs = (Feedback) session.get(Feedback.class, 4);
//        System.out.println(rs.getName());

//        Criteria criteria = session.createCriteria(Feedback.class);
//        criteria.setProjection(Projections.avg("rating"));
//        System.out.println(criteria.uniqueResult());

        User us = (User) session.get(User.class, 1);
        System.out.println(us.getUsername());
        System.out.println(us.getCountry().getName());
	}
}
