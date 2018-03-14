package com.daigou.action;

import java.util.List;



import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.daigou.dao.GoodsDao;
import com.daigou.model.*;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class GoodsAction extends ActionSupport{
	
	 /*业务层对象*/
    @Resource GoodsDao goodsDao;
    
    
    private Goods goods;

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	private List<Goods> goodsList;
	
	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setFoodList(List<Goods> foodList) {
		this.goodsList = goodsList;
	}
	
	private String keyWords;
	
	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	
	/*添加Food*/
	public String addGoods() throws Exception{
		
		System.out.println(goods.getGoodsname());
		goodsDao.AddGoods(goods);
		return "message";
		
	}
	
	/*显示所有Food*/
    public String showGoods() {
        
        goodsList = goodsDao.QueryAllGoods();
        return "show_view";
    }

    /*显示某一Food的详细信息*/
    public String showDetail() {
    	goods = goodsDao.GetGoodsById(goods.getGoodsid());
        return "detail_view";
    }
    
    /*显示food的修改项*/
    public String showEdit() throws Exception {
    goods = goodsDao.GetGoodsById(goods.getGoodsid());
        return "edit_view";
    }

    /*编辑food*/
    public String editGoods() throws Exception {
    	goodsDao.UpdateGoods(goods);
        return "edit_message";
    }
    
    /*删除Food*/
    public String deleteGoods() throws Exception {
    	goodsDao.DeleteGoods(goods.getGoodsid());
        return "delete_message";
    }
    
    /*查询Food*/
    public String queryGoods() throws Exception {
    	goodsList = goodsDao.QueryGoodsInfo(keyWords);
        return "show_view";
    }




}