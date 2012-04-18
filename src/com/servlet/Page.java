package com.servlet;

import java.util.Iterator;
import java.util.Map;
import org.hibernate.Query;
import org.hibernate.Session;

import com.hibernate.HibernateSessionFactory;

public class Page {
	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 传入的
	private String hql;// 用于存储查询语句

	private long currPage;// 当前页数
	private int countOfPerPage = 20;// 每页条数
	private String actionURL;// 需要生成的共同的页面访问URL
	// 计算的
	private long totalCount;// 总条数
	private long totalPage;// 总页数
	private String pageString;
	private Map param;

	public Map getParam() {
		return param;
	}

	public void setParam(Map param) {
		this.param = param;
	}

	public Page(String hql, long currPage, int countPerPage, String actionURL,
			Map param) {
		this.hql = hql;
		this.currPage = currPage;
		this.countOfPerPage = countPerPage;
		this.actionURL = actionURL;

		Session session = HibernateSessionFactory.getSession();
		try {
			// 计算totalCount

			Query q = session.createQuery("select count(*) " + hql);
			this.totalCount = ((Long) q.iterate().next()).longValue();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		if (this.totalCount > 0) {
			// 计算totalPage
			if (this.totalCount % countPerPage == 0) {
				this.totalPage = this.totalCount / countPerPage;
			} else {
				this.totalPage = this.totalCount / countPerPage + 1;
			}

			// 生成分页链接字符串
			if (this.currPage < 1) {
				this.currPage = 1;
			}
			if (this.currPage > this.totalPage) {
				this.currPage = this.totalPage;
			}
			String href = this.actionURL + "?";
			String form_param="";
			if (param.size() > 0) {
				Iterator it = param.entrySet().iterator();
				while (it.hasNext()) {
					Map.Entry entry = (Map.Entry) it.next();
					Object key = entry.getKey();
					Object value = entry.getValue();
					href = href + key + "=" + value + "&";
					form_param="<input type='hidden' name='"+key+"' value='"+value+"'";
				}
			}
			this.pageString = "共有" + this.totalCount + "条记录；当前第"
					+ this.currPage + "/" + this.totalPage + "页<a href='"
					+ href + "currPage=1'>第一页</a>";
			if (this.currPage > 1) {
				this.pageString += "<a href='" + href + "currPage="
						+ (this.currPage - 1) + "'>上一页</a>";
			}
			if (this.currPage < this.totalPage) {
				this.pageString += "<a href='" + href + "currPage="
						+ (this.currPage + 1) + "'>下一页</a>";
			}
			this.pageString += "<a href='" + href + "currPage="
					+ this.totalPage + "'>最后一页</a>" + "<form action='" + this.actionURL
					+ "'><input type='text' name='currPage' value='"
					+ this.currPage
					+ "'/><input type='submit' value='goto'>"+form_param+";</form>";
		} else {
			this.pageString = "暂无记录";
		}
	}

	public String getHql() {
		return hql;
	}

	public void setHql(String hql) {
		this.hql = hql;
	}

	public long getCurrPage() {
		return currPage;
	}

	public void setCurrPage(long currPage) {
		this.currPage = currPage;
	}

	public int getCountOfPerPage() {
		return countOfPerPage;
	}

	public void setCountOfPerPage(int countOfPerPage) {
		this.countOfPerPage = countOfPerPage;
	}

	public String getActionURL() {
		return actionURL;
	}

	public void setActionURL(String actionURL) {
		this.actionURL = actionURL;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}

	public String getPageString() {
		return pageString;
	}

	public void setPageString(String pageString) {
		this.pageString = pageString;
	}
}