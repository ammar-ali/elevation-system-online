package edu.aptech.vn.utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 * User: LongDH
 * Date: 11/16/12
 * Time: 5:41 PM
 */
public class HibernateUtil {
    private static final SessionFactory session = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            return new AnnotationConfiguration().configure().buildSessionFactory();
        }
        catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSession() {
        return session;
    }

    public static void shutdown() {
        getSession().close();
    }
}
