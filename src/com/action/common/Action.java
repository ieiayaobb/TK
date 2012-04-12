package com.action.common;

import java.util.List;

import org.hibernate.Session;

import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;

public class Action extends ActionSupport  {
	public String execute() throws Exception {
		System.out.println("*******add liuyan prii**********");
		Session session = HibernateSessionFactory.getSession();
		 try {
			 String hql="";
			 List list=session.createQuery(hql).list();
		 }catch(Exception e){
			 System.out.println(e);
		 }finally{
			 session.close();
		 }
		return SUCCESS;
	}
}
