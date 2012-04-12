package com.action.st;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entity.YhbyLy;
import com.entity.YhbyPri;
import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;
import com.servlet.Page;

public class GotoyhbyDetail extends ActionSupport {
	private int Yhbypri_id;
	private int currPage;
	private String pageString;

	public String getPageString() {
		return pageString;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public YhbyPri getPri() {
		return pri;
	}
	public int getYhbypri_id() {
		return Yhbypri_id;
	}
	public void setYhbypri_id(int yhbypri_id) {
		Yhbypri_id = yhbypri_id;
	}
	public List<YhbyLy> getList() {
		return list;
	}
	public void setId(int Yhbypri_id) {
		this.Yhbypri_id = Yhbypri_id;
	}
	private YhbyPri pri=new YhbyPri();
	private List<YhbyLy> list = new ArrayList();
	public String execute() throws Exception {
		 int PageSize=3;
		 System.out.println("GotoYhbyDetail Yhbypri_id="+Yhbypri_id);
		 Session session =HibernateSessionFactory.getSession();
		 String hql1="from YhbyPri p where p.id="+this.Yhbypri_id;
		 List<YhbyPri> templist=session.createQuery(hql1).list();
		 pri=templist.get(0);
		 String hqlw="from YhbyPri p ,YhbyLy ly where ly.yhbyPri=p and p.id="+this.Yhbypri_id;
		 String hql2="select ly "+hqlw;
		
		 Query query=session.createQuery(hql2);
		 query.setFirstResult((int)((this.currPage-1)*PageSize));
		 query.setMaxResults(PageSize);	 
		 list=query.list();
		 session.close();
		 Map param = new HashMap();
		 param.put("Yhbypri_id", this.Yhbypri_id);
		 Page page=new Page(hqlw,currPage,PageSize,"st/gotoyhbyDetail",param);
		 this.pageString=page.getPageString();
		 System.out.println("end");
		return SUCCESS;
	}
}
