/**
 * 
 */
package edu.aptech.vn.action.admin;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Query;

import com.opensymphony.xwork2.ModelDriven;

import edu.aptech.vn.model.Project;

/**
 * @author BinhHC
 *
 */
@Namespace("/admin/project")
public class ProjectAction extends BaseAction implements ModelDriven {

	private static final Logger logger = Logger.getLogger(ProductAction.class);
	private List<Project> projects = new ArrayList<Project>();
	private Project project = new Project();
	
	@Action(value = "index", results = { @Result(name = "success", location = "index.jsp") })
	public String execute() throws Exception {
		try {
			try {
				page = Integer.parseInt(getParam("page"));
			} catch (Exception e) {
			} finally {
				Query q = db.createQuery("from Project p where p.status=1");
				paging(q.list().size());
				q.setFirstResult(offset);
				q.setMaxResults(PER_PAGE);
				projects = q.list();
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
			return ERROR;
		}
		return SUCCESS;
	}
	
	@Action(value = "deleted", results = { @Result(name = "success", location = "deleted.jsp") })
	public String viewDeleted() throws Exception {
		try {
			try {
				page = Integer.parseInt(getParam("page"));
			} catch (Exception e) {
			} finally {
				Query q = db.createQuery("from Project p where p.status=0");
				paging(q.list().size());
				q.setFirstResult(offset);
				q.setMaxResults(PER_PAGE);
				projects = q.list();
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
			return ERROR;
		}
		return SUCCESS;
	}
	
	@Action(value = "del", results = { @Result(name = "success", type="redirect", location = "index") })
	public String delete() throws Exception {
		int id = Integer.parseInt(getParam("id"));
		try {
			project = (Project) db.get(Project.class, id);
			project.setStatus(0);
			db.beginTransaction();
			db.update(project);
			db.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
		}
		return ERROR;
	}
	
	@Action(value = "undel", results = { @Result(name = "success", type="redirect", location = "index") })
	public String undelete() throws Exception {
		int id = Integer.parseInt(getParam("id"));
		try {
			project = (Project) db.get(Project.class, id);
			project.setStatus(1);
			db.beginTransaction();
			db.update(project);
			db.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
		}
		return ERROR;
	}
	
	@Action(value = "add", results = { @Result(name = "success", location = "add.jsp") })
	public String add() throws Exception {
		
		return SUCCESS;
	}

	@Action(value = "edit", results = { @Result(name = "success", location = "edit.jsp") })
	public String edit() throws Exception {
		int id = Integer.parseInt(getParam("id"));
		try {
			project = (Project) db.get(Project.class, id);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
		}
		return ERROR;
	}

	@Action(value = "update", results = { @Result(name = "success", type = "redirect", location = "index") })
	public String update() throws Exception {
		try {
			db.beginTransaction();
			db.update(project);
			db.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug(e.getMessage());
		}
		return ERROR;
	}

	@Action(value = "doadd", results = { @Result(name = "success", type = "redirect", location = "index") })
	public String addAction() {
		try {
			db.beginTransaction();
			db.save(project);
			db.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}
	
	@Override
	public Object getModel() {
		return project;
	}

	/**
	 * @return the projects
	 */
	public List<Project> getProjects() {
		return projects;
	}

	/**
	 * @param projects the projects to set
	 */
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

	/**
	 * @return the project
	 */
	public Project getProject() {
		return project;
	}

	/**
	 * @param project the project to set
	 */
	public void setProject(Project project) {
		this.project = project;
	}

}
