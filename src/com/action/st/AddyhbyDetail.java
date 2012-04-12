package com.action.st;

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

public class AddyhbyDetail extends ActionSupport {
	private int Yhbypri_id;


	public void setGold(int gold) {
		this.gold = gold;
	}

	public int getYhbypri_id() {
		return Yhbypri_id;
	}

	public void setYhbypri_id(int yhbypri_id) {
		Yhbypri_id = yhbypri_id;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	private int gold;
	private String detail;

	public String execute() throws Exception {
		System.out.println("*******add liuyan priid="+Yhbypri_id+"**********");
		Session session = HibernateSessionFactory.getSession();
		 try {
		//主题及其属性修改
		String hql = "from YhbyPri en where en.id=" + Yhbypri_id;
		List<YhbyPri> list_temp = session.createQuery(hql).list();
		YhbyPri yhby_pri=list_temp.get(0);
		Transaction tran;
		tran= session.beginTransaction();
		gold=gold+yhby_pri.getGold();
		hql = "update YhbyPri en set en.gold="+gold+" where en.id=" + Yhbypri_id;
		Query queryupdate=session.createQuery(hql);
		int intret=queryupdate.executeUpdate();
		if(intret!=1)System.out.println("金币数修改失败");
	//	System.out.println(gold);
		tran.commit();
		//留言的用户
		HttpServletRequest request=ServletActionContext.getRequest();   	
		HttpSession session2=request.getSession();   
		String name=(String) session2.getAttribute("login_user");
		String hql2 = "from UserPri en where en.name=" + name;
		@SuppressWarnings("unchecked")
		List<UserPri>list_temp2 = session.createQuery(hql2).list();
		UserPri user_pri=list_temp2.get(0);
		
		//新建留言并插入
		YhbyLy ly=new YhbyLy();
		ly.setDetail(detail);
		ly.setGold(gold);
		ly.setYhbyPri(yhby_pri);
		ly.setUserPri(user_pri);
		tran = session.beginTransaction();
		session.save(ly);
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
