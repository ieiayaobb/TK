package com.action.st;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entity.Title;
import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;
import com.servlet.Page;

public class GotoYhby extends ActionSupport {
	private int currPage;
	private String pageString;

	public String getPageString() {
		return pageString;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	private List<Title> list = new ArrayList();

	public List<Title> getList() {
		return list;
	}

	public String execute()throws Exception{
		 int PageSize=3;
		 System.out.println("GotoYhbyList");
		 Session session =HibernateSessionFactory.getSession();
		 String hql="select en.id ,en.title from YhbyPri en";
		 Query query=session.createQuery(hql);
		 query.setFirstResult((int)((this.currPage-1)*PageSize));
		 query.setMaxResults(PageSize);
		 List list_temp=query.list();
		 session.close();
		 for(int i=0;i<list_temp.size();i++){
			 Object[] obj=(Object[])list_temp.get(i);
			 Title t=new Title();
			 t.setId(Integer.valueOf(obj[0].toString()));
			 t.setTitle(obj[1].toString());
			 list.add(t);
		 }
		 Map param = new HashMap();
		 Page page=new Page("from YhbyPri en",currPage,PageSize,"st/gotoYhby",param);
		 this.pageString=page.getPageString();
		 System.out.println("end");
		 return SUCCESS;
		
	}
}
