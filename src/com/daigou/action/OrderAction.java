package com.daigou.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.daigou.dao.UserDao;
import com.daigou.dao.GoodsDao;
import com.daigou.dao.OrderDao;
import com.daigou.model.*;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class OrderAction extends ActionSupport{
	
	 /*业务层对象*/
    @Resource OrderDao orderDao;
    @Resource UserDao userDao;
    @Resource GoodsDao goodsDao;
    
    private Order order;
    private List<Order> orderList;
    private User user;
    private Goods goods;
    
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	
	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	/*添加Order*/
	public String addOrder() throws Exception{
		
		user = userDao.QueryUserInfo(user.getName()).get(0);
		Order ord =new Order();
		ord.setUser(user);
		ord.setGoods(goods);
		ord.setGoodsnum(1);
		ord.setTotal(goodsDao.GetGoodsById(goods.getGoodsid()).getPrice()*1);
		orderDao.AddOrder(ord);
		return "order_message";
		
	}
	
	/*显示所有Order*/
    public String showOrder() {
      System.out.println(user.getName());
        //将系统设定为用户名不重复，因此在系统中查询到第一个该名称用户即可
        User cus= userDao.QueryUserInfo(user.getName()).get(0);
        //注意不需要food的查询条件时，下面语句的写法，直接将food的条件置为null
        orderList = orderDao.QueryOrderInfo(cus,null);
   
        return "show_view";
    }

    /*显示某一Order的详细信息*/
    public String showDetail() {
    	System.out.print(order.getOrderid());
    	order = orderDao.GetOrderById(order.getOrderid());
        return "detail_view";
    }
    
    /*显示Order的修改项*/
    /*public String showEdit() throws Exception {
    	order = orderDao.GetOrderById(order.getOrderid());
        return "edit_view";
    }*/

    /*编辑Order*/
    /*public String editOrder() throws Exception {
    	orderDao.UpdateOrder(order);
        return "edit_message";
    }*/
    
    /*删除Order*/
    /*public String deleteOrder() throws Exception {
    	orderDao.DeleteOrder(food.getFoodid());
        return "delete_message";
    }*/
    
    /*查询Order*/
    public String queryOrders() throws Exception {
    	orderList = orderDao.QueryOrderInfo(user,goods);
        return "show_view";
    }


}
