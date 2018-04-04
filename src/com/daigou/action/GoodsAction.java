package com.daigou.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;



import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.daigou.dao.GoodsDao;
import com.daigou.model.*;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class GoodsAction extends ActionSupport{
	
	 /*业务层对象*/
    @Resource GoodsDao goodsDao;
    private File goodsPhoto;
    private String goodsPhotoFileName;
    private String goodsPhotoContentType;    
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
			String path = ServletActionContext.getServletContext().getRealPath("/images"); 
	        /*处理图片上传*/
	        String goodsPhotoFileName = ""; 
	   	 	if(goodsPhoto!= null) {
	   	 		InputStream is = new FileInputStream(goodsPhoto);
	   			String fileContentType = this.getGoodsPhotoContentType();
	   			System.out.println(fileContentType);
	   			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
	   				goodsPhotoFileName = UUID.randomUUID().toString() +  ".jpg";
	   			else if(fileContentType.equals("image/gif"))
	   				goodsPhotoFileName = UUID.randomUUID().toString() +  ".gif";
	   			else if(fileContentType.equals("image/png"))
	   				goodsPhotoFileName = UUID.randomUUID().toString() +  ".png";

	   			File file = new File(path, goodsPhotoFileName);
	   			OutputStream os = new FileOutputStream(file);
	   			byte[] b = new byte[1024];
	   			int bs = 0;
	   			while ((bs = is.read(b)) > 0) {
	   				os.write(b, 0, bs);
	   			}
	   			is.close();
	   			os.close();
	   	 	}
	        if(goodsPhoto != null)
	        	goods.setFilepath("images/" + goodsPhotoFileName);
	        else
	        	goods.setFilepath("images/NoImage.jpg");
	        
	        goodsDao.AddGoods(goods);
			return "message";
		
		/*
		System.out.println(goods.getGoodsname());
		goodsDao.AddGoods(goods);
		return "message";
		*/
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

	public File getGoodsPhoto() {
		return goodsPhoto;
	}

	public void setGoodsPhoto(File goodsPhoto) {
		this.goodsPhoto = goodsPhoto;
	}

	public String getGoodsPhotoFileName() {
		return goodsPhotoFileName;
	}

	public void setGoodsPhotoFileName(String goodsPhotoFileName) {
		this.goodsPhotoFileName = goodsPhotoFileName;
	}

	public String getGoodsPhotoContentType() {
		return goodsPhotoContentType;
	}

	public void setGoodsPhotoContentType(String goodsPhotoContentType) {
		this.goodsPhotoContentType = goodsPhotoContentType;
	}




}