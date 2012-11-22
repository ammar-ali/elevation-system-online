package edu.aptech.vn.action;

import com.opensymphony.xwork2.ActionSupport;
import edu.aptech.vn.utils.HibernateUtil;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.HashMap;
import java.util.Map;

/**
 * All actions must extend this!!!
 * User: LongDH
 * Date: 11/16/12
 * Time: 7:13 PM
 */
@Results({
    @Result(name="error", location="/error.jsp")
})
public abstract class BaseAction extends ActionSupport implements SessionAware {
    private int id;
    private Map<String, Object> session = new HashMap<String, Object>();
    protected final Session db = HibernateUtil.getSession().openSession();

    protected String title = getClass().getName().substring(getClass().getName().lastIndexOf(".") + 1, getClass().getName().indexOf("Action"));

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public Map<String, Object> getSession() {
        return session;
    }
}
