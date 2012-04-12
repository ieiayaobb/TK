package com.action.gl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.entity.StPri;
import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;

public class GotoStJbxx  extends ActionSupport{
	private StPri st_pri;
	public StPri getSt_pri() {
		return st_pri;
	}
	public String execute()throws Exception{
		 System.out.println("GotoStJbxx");
		 HttpServletRequest request=ServletActionContext.getRequest();   	
		 HttpSession session=request.getSession();  
		 String name=(String) session.getAttribute("login_user");
		 Session session2 =HibernateSessionFactory.getSession();
		 try{
			 String hql="from StPri en where en.name='"+name+"'";
			 List<StPri> list=session2.createQuery(hql).list();
			 st_pri=list.get(0);
		 }catch(Exception e){
			 System.out.println(e);
		 }finally{
			 session2.close();
		 }
		 return SUCCESS;
	}

}
