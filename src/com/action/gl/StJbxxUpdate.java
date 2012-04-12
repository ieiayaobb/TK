package com.action.gl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.UserPri;
import com.entity.YhbyLy;
import com.entity.YhbyPri;
import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;

public class StJbxxUpdate extends ActionSupport  {
	private String toux;
	private String brief;
	private String introduction;
	public void setToux(String toux) {
		this.toux = toux;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String execute() throws Exception {
		System.out.println("*******StJbxxUpdate**Action**********");
		Session session = HibernateSessionFactory.getSession();
		 try {
		Transaction tran;
		tran= session.beginTransaction();
		String hql = "update StPri en set en.toux='"+toux+"',en.brief='"+brief+"',en.introduction='"+introduction+"'";
		Query queryupdate=session.createQuery(hql);
		int intret=queryupdate.executeUpdate();
		if(intret==0)System.out.println("基本信息修改失败");
		tran.commit();
		 }catch (Exception e){
			 System.out.println(e);
		 }
		finally{
			session.close();
		}
		return SUCCESS;
	}

}