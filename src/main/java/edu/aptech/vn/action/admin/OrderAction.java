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
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ModelDriven;

import edu.aptech.vn.model.Order;
import edu.aptech.vn.model.OrderProduct;
import edu.aptech.vn.model.User;

/**
 * @author BinhHC
 *
 */
@Namespace("/admin/order")
public class OrderAction extends BaseAction implements ModelDriven {

	private static final Logger logger = Logger.getLogger(OrderAction.class);
	private List<Order> orders = new ArrayList<Order>();
	private Order order = new Order();
	private OrderProduct orderProduct = new OrderProduct();
	private List<OrderProduct> orderDetail = new ArrayList<OrderProduct>();
	
	@Action(value = "index", results = { @Result(name = "success", location = "index.jsp") })
	public String execute() throws Exception {
		try {
			try {
				page = Integer.parseInt(getParam("page"));
			} catch (Exception e) {
			} finally {
				Query q = db.createQuery("from Order");
				paging(q.list().size());
				q.setFirstResult(offset);
				q.setMaxResults(PER_PAGE);
				orders = q.list();
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
			return ERROR;
		}
		return SUCCESS;
	}
		
	@Action(value = "view", results = { @Result(name = "success", location = "view.jsp") })
	public String view() throws Exception {
		int id = Integer.parseInt(getParam("id"));
		try {
			order = (Order) db.get(Order.class, id);
			orderDetail = order.getOrderProducts();
			
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
		}
		return ERROR;
	}
	
	@Action(value = "updateStatus", results = { @Result(name = "success", type="redirect", location = "index") })
	public String updateStatus() throws Exception {
		int id = Integer.parseInt(getParam("id"));
		int status = Integer.parseInt(getParam("order_status"));
		try {
			order = (Order) db.get(Order.class, id);
			order.setStatus(status);
			db.beginTransaction();
			db.update(order);
			db.getTransaction().commit();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info(e.getMessage());
		}
		return ERROR;
	}
	
	@Override
	public Object getModel() {
		return order;
	}

	/**
	 * @return the orders
	 */
	public List<Order> getOrders() {
		return orders;
	}

	/**
	 * @param orders the orders to set
	 */
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	/**
	 * @return the order
	 */
	public Order getOrder() {
		return order;
	}

	/**
	 * @param order the order to set
	 */
	public void setOrder(Order order) {
		this.order = order;
	}

	/**
	 * @param orderProduct the orderProduct to set
	 */
	public void setOrderProduct(OrderProduct orderProduct) {
		this.orderProduct = orderProduct;
	}

	/**
	 * @return the orderProduct
	 */
	public OrderProduct getOrderProduct() {
		return orderProduct;
	}

	/**
	 * @param orderDetail the orderDetail to set
	 */
	public void setOrderDetail(List<OrderProduct> orderDetail) {
		this.orderDetail = orderDetail;
	}

	/**
	 * @return the orderDetail
	 */
	public List<OrderProduct> getOrderDetail() {
		return orderDetail;
	}

}
