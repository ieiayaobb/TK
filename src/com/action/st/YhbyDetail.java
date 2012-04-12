package com.action.st;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;

public class YhbyDetail extends ActionSupport {
	private int id;
	ArrayList<String>   list   =   new   ArrayList();
	public ArrayList getList() {
		return list;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String execute() throws Exception {
		 System.out.println("YhbyDetail");
		 Session session =HibernateSessionFactory.getSession();
		 String hql="select ly.detail from YhbyPri pri,YhbyLy ly where ly.yhbyPri=pri and pri.id="+id;
		 List list=session.createQuery(hql).list();
		 session.close();	
		 System.out.println(list.size());
		 for(int i=0;i<list.size();i++){
			list.add(list.get(i).toString());
		 }

		return SUCCESS;
	}

}
