package com.action.st;

import java.util.List;

import org.hibernate.Session;

import com.entity.StPri;
import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;

public class GotoStjj extends ActionSupport  {
	private List<StPri> list;
	public List<StPri> getList() {
		return list;
	}
	public String execute() throws Exception {
		System.out.println("*******GotoStjj Action**********");
		Session session = HibernateSessionFactory.getSession();
		 try {
			 String hql="from StPri e";
			 list=session.createQuery(hql).list();
		 }catch(Exception e){
			 System.out.println(e);
		 }finally{
			 session.close();
		 }
		return SUCCESS;
	}
}
