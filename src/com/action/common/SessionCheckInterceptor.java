package com.action.common;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
public class SessionCheckInterceptor implements Interceptor{
	private String sessionAttribute;
	private String reloginResult;
	private String url;

	public  void destroy(){}
	public void init(){}
	public String intercept(ActionInvocation invocation) throws Exception {
		// 读取session
		 
		HttpServletRequest request=ServletActionContext.getRequest();   	
		 HttpSession session=request.getSession();   
		//判断session中是否有相应的attribute
		if(session!=null && session.getAttribute(sessionAttribute)!=null){
			String resultCode=invocation.invoke();
			return resultCode;
		}
		else{
			setToGoingURL(request, session, invocation); 
			return reloginResult;
		}
		
	}
	private void setToGoingURL(HttpServletRequest request,HttpSession session,ActionInvocation invocation)   
    {   
        //如果referer不为空 直接使用它。如果为空我们分别获得命名空间，action名,以及请求参数   
        //从新构造成一个URL保存在session中   
        String url=request.getHeader("referer");   
     //   log.info("待转向URL:"+request.getHeader("referer"));   
        if(url==null || url.equals(""))   
            {   
                url="";   
                String path=request.getContextPath();   
                String actionName=invocation.getProxy().getActionName();   
                String nameSpace=invocation.getProxy().getNamespace();   
                if(!nameSpace.equals(null))   
                    {   
                        url = url+path+nameSpace;   
                           
                    }   
                if(!actionName.equals(null))   
                    {   
                        url = url+"/"+actionName+".action"+"?";   
                    }   
                   
                Map<String,String[]> zzMap = request.getParameterMap();   
                if(zzMap!=null)   
                    {   
                        for(String s:zzMap.keySet())   
                            {   
                                String[] value=zzMap.get(s);   
                                for(String val:value)   
                                    {   
                                        url=url+s+"="+val+"&";   
                                    }   
                                   
                            }   
                    }   
             //   log.info("完整URL:"+url);   
            }   
               session.setAttribute("GOING_TO", url);   
    }


	public void setSessionAttribute(String sessionAttribute) {
		this.sessionAttribute = sessionAttribute;
	}
	public void setReloginResult(String reloginResult) {
		this.reloginResult = reloginResult;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	

}
