package com.business;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.wisdom.AppConstant;
import com.wisdom.model.vo.SessionUser;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SessionIterceptor extends AbstractInterceptor {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
    @Override  
    public String intercept(ActionInvocation actionInvocation) throws Exception {  
        ActionContext ctx = ActionContext.getContext(); 
        //Map session = ctx.getSession();  
        Action action = (Action) actionInvocation.getAction();  
		return actionInvocation.invoke();
    }
}
