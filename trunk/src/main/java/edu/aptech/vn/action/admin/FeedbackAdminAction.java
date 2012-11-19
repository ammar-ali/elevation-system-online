/**
 * 
 */
package edu.aptech.vn.action.admin;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.views.tiles.TilesResult;


/**
 * @author BinhHC
 *
 */
@Namespace("/admin")
public class FeedbackAdminAction extends edu.aptech.vn.action.FeedbackAction{

	@Override
	@Action(value = "index", results={
	        @Result(name="success", location="feedback.jsp")
	    })
	public String execute() throws Exception {
		return super.execute();
	}

	@Override
	@Action(value = "add", results={
            @Result(name="success", type="redirect", location="feedback/index")
    })
	public String add() throws Exception {
		
		return super.add();
	}
	
}
