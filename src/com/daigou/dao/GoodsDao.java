package com.daigou.dao;

import java.util.ArrayList;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daigou.model.User;
import com.daigou.model.Goods;


@Service @Transactional
public class GoodsDao {
	@Resource SessionFactory factory;
	
	 /*添加Food信息*/
    public void AddGoods(Goods goods) throws Exception {
    	Session s = factory.getCurrentSession();
    	s.save(goods);
    }
    
    /*删除Food信息*/
    public void DeleteGoods (Integer goodsId) throws Exception {
        Session s = factory.getCurrentSession(); 
        Object goods = s.load(Goods.class, goodsId);
        s.delete(goods);
    }
    
    /*更新Food信息*/
    public void UpdateGoods(Goods goods) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(goods);
    }
    
    /*查询所有Food信息*/
    public ArrayList<Goods> QueryAllGoods() {
        Session s = factory.getCurrentSession();
        String hql = "From Goods";
        Query q = s.createQuery(hql);
        List goodsList = q.list();
        return (ArrayList<Goods>) goodsList;
    }

    /*根据主键获取对象*/
    public Goods GetGoodsById(Integer goodsid) {
        Session s = factory.getCurrentSession();
        Goods goods = (Goods)s.get(Goods.class, goodsid);
        return goods;
    }
    
    /*根据查询条件查询*/
    public ArrayList<Goods> QueryGoodsInfo(String goodsname) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Goods goods where 1=1";
    	if(!goodsname.equals("")) hql = hql + " and goods.goodsname like '%" + goodsname + "%'";
    	Query q = s.createQuery(hql);
    	List goodsList = q.list();
    	return (ArrayList<Goods>) goodsList;
    }

}
