package com.food.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.food.model.Customer;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptors extends AbstractInterceptor{

	 
	   private static final long serialVersionUID = 1L;

	   private String sessionName; //鐢ㄦ潵浼犻�褰撳墠鐢ㄦ埛鐨勪俊鎭�

	   private String excludeName; //渚嬪鐨刟ction锛屼篃灏辨槸鍑℃槸渚嬪鐨刟ction灏变笉闇�鎷︽埅

	   private List <String> list;

	   /*
	    * 鍥犱负鍦ㄩ厤缃枃浠剁殑鍙傛暟excludeName涓紝渚嬪鐨刟ction鍙兘鏄嫢骞蹭釜锛屼腑闂寸敤閫楀彿闂撮殧锛屾墍浠ュ湪鍙栧�鏃惰鎶奺xcludeName鍒嗚В鎴愬崟鐙殑
	   涓�釜涓猘ction鐨勫悕瀛楋紝鏀惧湪涓�釜list涓紝strlsit鏂规硶鐢ㄦ潵鍒嗚В杩欎簺action鐨勫悕瀛�
	                 鍋囧閫楀彿鍓嶅悗鏈夌┖鏍硷紝鍒欎娇鐢╰rim()鏂规硶鍘婚櫎杩欎簺绌烘牸
	   */
	   public List<String>  strlsit(String str){

	     String[] s = str.split(",");

	     List <String> list = new ArrayList <String>();

	     for(String ss : s){

	        list.add(ss.trim());

	     }

	     return list;

	   }

	   @Override

	   public void init() {

	      list = strlsit(excludeName);

	   }

	   @Override

	   public String intercept(ActionInvocation invocation) throws Exception {

	     
		 System.out.println("--------启动拦截器-------");  //姝よ鍙ュ彲浠ョ敤鏉ラ獙璇佹槸鍚﹁兘杩涘叆intercept鏂规硶
		 String actionName = invocation.getProxy().getActionName();   //寰楀埌璺宠浆鐨刟ction鐨勫悕瀛�
		 Map <String,Object>  session = invocation.getInvocationContext().getSession();  //寰楀埌褰撳墠session

	     if(list.contains(actionName)){   //濡傛灉璇锋眰鍚堟硶锛屼篃灏辨槸杩涚櫥褰曟垨娉ㄥ唽鐨刟ction锛屽垯涓嶆嫤鎴�
	        
	    	System.out.println(actionName + "被拦截了");
	        return invocation.invoke();     //灏辨槸閫氱煡struts2缁х画澶勭悊浠ュ悗鐨勪簨鍎匡紝涔熷氨鏄笉鍔犳嫤鎴櫒鏃惰鎵ц鐨勯偅涓猘ction

	     }else {   //濡傛灉璇锋眰涓嶅悎娉曪紝涔熷氨鏄渶瑕佽鎷︽埅

	        //鏌ョ湅session
	    	System.out.println(actionName + "没有被拦截");

	        
	        
	        //寰楀埌褰撳墠鐢ㄦ埛锛堝綋鍓嶇敤鎴峰湪login鏂规硶涓凡缁忚鏀惧叆session涓紝瑙丆ustomerAction涓殑login鏂规硶锛�
	        Customer customer = (Customer) session.get(sessionName);   
	        
	           if(customer==null){   //濡傛灉customer涓嶅瓨鍦紝灏辫鏄庣櫥褰曚笉鎴愬姛锛岃繕杞洖login
	        	     // 鑾峰彇HttpServletRequest瀵硅薄  
	                 HttpServletRequest req = ServletActionContext.getRequest();  

	                 // 鑾峰彇姝よ姹傜殑鍦板潃 锛屼篃灏辨槸鑾峰彇鎷︽埅鍓嶈璺宠浆鐨勫湴鍧�紝杩涜璺宠浆
	                 String path = req.getRequestURI().replaceAll("/foodProject", "");
	                 System.out.println("path:" + path);
	        
	                 // 瀛樺叆session锛岃繖涓弬鏁板湪struts.xml涓細浣滀负鍙傛暟鍑虹幇  
	                 session.put("prePage", path);  
	        	     return "login";
	           }
	           else {                //濡傛灉customer瀛樺湪锛屽垯鐧诲綍鎴愬姛
	        	
	                 return invocation.invoke();    //閫氱煡struts2璺宠浆鍒癮ction涓�

	          }

	     }

	   }

	   public String getSessionName() {

	     return sessionName;

	   }

	   public void setSessionName(String sessionName) {

	     this.sessionName = sessionName;

	   }

	   public String getExcludeName() {

	     return excludeName;

	   }

	   public void setExcludeName(String excludeName) {

	     this.excludeName = excludeName;

	   }

	   public List<String> getList() {

	     return list;

	   }

	   public void setList(List<String> list) {

	     this.list = list;

	   }


	}
