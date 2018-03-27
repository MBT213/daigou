package com.daigou.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.daigou.dao.UserDao;
import com.daigou.model.User;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class UserAction extends ActionSupport{
	


	/*业务层对象*/
    @Resource UserDao userDao;
    
    private User user;
    

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String reg() throws Exception{
		userDao.AddUser(user);
		return "show_view";
		
	}
	
	private String errMessage;
	
	public String getErrMessage() {
		return errMessage;
	}

	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
    
	/* 验证用户登录 */
	public String login() {
		User db_user = (User)userDao.QueryUserInfo(user.getName()).get(0);
		if(db_user== null) { 
			this.errMessage = " 账号不存在 ";
			System.out.print(this.errMessage);
			return INPUT;
		} else if( !db_user.getPassword().equals(user.getPassword())) {
			this.errMessage = " 密码不正确! ";
			System.out.print(this.errMessage);
			return INPUT;
		}
		return "show_view";
	}

}