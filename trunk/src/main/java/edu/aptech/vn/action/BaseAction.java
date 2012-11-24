package edu.aptech.vn.action;

import com.opensymphony.xwork2.ActionSupport;
import edu.aptech.vn.utils.HibernateUtil;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.ParameterAware;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
public abstract class BaseAction extends ActionSupport implements SessionAware, ParameterAware {
	protected int id;
    protected Map<String, Object> session = new HashMap<String, Object>();
    protected Map<String, String[]> params = new HashMap<String, String[]>();
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

	public Object setSession(String key, Object value) {
		return session.put(key, value);
	}

	public Object getSession(String key) {
		return session.get(key);
	}

    @Override
    public void setParameters(Map<String, String[]> params) {
        this.params = params;
    }

    public String getParam(String key) {
        return params.get(key) != null && params.get(key).length > 0 ? params.get(key)[0] : null;
    }

    public String md5(String s) {
        try {
			MessageDigest m = MessageDigest.getInstance("MD5");
            m.reset();
            m.update(s.getBytes());
            byte[] digest = m.digest();
            BigInteger bigInt = new BigInteger(1,digest);
            String hashtext = bigInt.toString(16);
// Now we need to zero pad it if you actually want the full 32 chars.
            while(hashtext.length() < 32 ){
                hashtext = "0"+hashtext;
            }
            return hashtext;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return "";
    }
}
