package edu.aptech.vn.action.admin;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Query;

import com.opensymphony.xwork2.ModelDriven;

import edu.aptech.vn.model.Product;
import edu.aptech.vn.model.Project;
import edu.aptech.vn.model.User;

/**
 * @author BinhHC
 *
 */
@Namespace("/admin/product")
public class ProductAction extends BaseAction implements ModelDriven {

	private static final Logger logger = Logger.getLogger(ProductAction.class);
	
	@Action(value = "index", results = { @Result(name = "success", location = "index.jsp") })
	public String execute() throws Exception {
		try {
			try {
				page = Integer.parseInt(getParam("page"));
			} catch (Exception e) {
			} finally {
				Query q = db.createQuery("from Product p where p.status=1");
				paging(q.list().size());
				q.setFirstResult(offset);
				q.setMaxResults(PER_PAGE);
				products = q.list();
			}
		} catch (Exception e) {
			e.printStackTrace();
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
				Query q = db.createQuery("from Product p where p.status=0");
				paging(q.list().size());
				q.setFirstResult(offset);
				q.setMaxResults(PER_PAGE);
				products = q.list();
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
			product = (Product) db.get(Product.class, id);
			product.setStatus(0);
			db.beginTransaction();
			db.update(product);
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
			product = (Product) db.get(Product.class, id);
			product.setStatus(1);
			db.beginTransaction();
			db.update(product);
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
			product = (Product) db.get(Product.class, id);
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
			db.update(product);
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
			db.save(product);
			db.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}

	}
	
	/**
	 * @return the products
	 */
	public List<Product> getProducts() {
		return products;
	}

	/**
	 * @param products the products to set
	 */
	public void setProducts(List<Product> products) {
		this.products = products;
	}

	/**
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}

	private List<Product> products = new ArrayList<Product>();
	private Product product = new Product();
	
	@Override
	public Object getModel() {
		return product;
	}

}
