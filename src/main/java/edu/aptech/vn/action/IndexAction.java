/**
 * 
 */
package edu.aptech.vn.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

/**
 * @author BinhHC
 * 
 */
@Namespace("/")
public class IndexAction extends BaseAction {

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp")
    })
	public String execute() throws Exception {
		return SUCCESS;
	}
}
