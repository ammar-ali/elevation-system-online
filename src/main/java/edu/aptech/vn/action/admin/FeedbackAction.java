/**
 * 
 */
package edu.aptech.vn.action.admin;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;


/**
 * @author BinhHC
 *
 */
@Namespace("/admin/feedback")
public class FeedbackAction extends edu.aptech.vn.action.FeedbackAction{

	@Override
	@Action(value = "index", results={
	        @Result(name="success", location="feedback.jsp")
	    })
	public String execute() throws Exception {
		return super.execute();
	}

	@Override
	@Action(value = "add", results={
            @Result(name="success", type="redirect", location="index")
    })
	public String add() throws Exception {
		
		return super.add();
	}
	
}
