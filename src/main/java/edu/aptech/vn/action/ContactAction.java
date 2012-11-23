/**
 * 
 */
package edu.aptech.vn.action;

import com.opensymphony.xwork2.ModelDriven;
import edu.aptech.vn.model.Feedback;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

/**
 * @author BinhHC
 * 
 */
@Namespace("/contact")
public class ContactAction extends BaseAction implements ModelDriven {
    protected Feedback feedback = new Feedback();

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp")
    })
	public String execute() throws Exception {
        return SUCCESS;
    }

    @Action(value = "add", results={
        @Result(name="success", location="index.jsp")
    })
	public String add() throws Exception {
        db.beginTransaction();
        db.save(feedback);
        db.getTransaction().commit();
        addActionMessage("Your feedback has been received.");
        return SUCCESS;
    }

    @Override
    public Object getModel() {
        return feedback;
    }
}
