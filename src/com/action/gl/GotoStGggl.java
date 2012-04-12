package com.action.gl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.entity.StGg;
import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;
import com.servlet.Page;

public class GotoStGggl extends ActionSupport {
	private List<StGg> list;
	private long currPage;
	public String getPageString() {
		return pageString;
	}

	public void setCurrPage(long currPage) {
		this.currPage = currPage;
	}

	private String pageString;

	public List<StGg> getList() {
		return list;
	}

	public String execute() throws Exception {
		int PageSize = 3;
		System.out.println("************GotoStGggl************");
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("login_user");
		Session session2 = HibernateSessionFactory.getSession();
		String hql="";
		try {
			hql = "from StGg gg,StPri pri where gg.stPri=pri and pri.name='"
					+ name + "'";
			list = session2.createQuery(hql).list();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			session2.close();
		}
		 Map param = new HashMap();
		Page page = new Page(hql, currPage, PageSize,
				"gl/gotoStGggl",param);
		this.pageString = page.getPageString();
		return SUCCESS;
	}

}
