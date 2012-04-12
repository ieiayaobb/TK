package com.action.common;

import java.util.List;
import org.hibernate.Session;
import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport {
	private String name;
	private String password;
	private String role;
	public void setName(String name) {
		this.name = name;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setRole(String role) {
		this.role = role;
	}
	public String execute() throws Exception {
		Session session = HibernateSessionFactory.getSession();
		String hql;
		if(role.equals("st")){
			hql= "select en.password from StPri en where en.name='"
				+ name + "'";
		}
		else{
			hql= "select en.password from UserPri en where en.name='"
				+ name + "'";
		}
		
		List list = session.createQuery(hql).list();
		session.close();
		if (list.size() < 1) {
			return "fail";
		} else {
			String temp = list.get(0).toString();
			if (temp.equals(password)) {
				ActionContext ctx=ActionContext.getContext();
				ctx.getSession().put("login_user", name);
				ctx.getSession().put("login_role", role);
				return "success";
			} else
				return "fail";
		}
	}
}