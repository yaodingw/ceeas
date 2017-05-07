package com.business.login.action;

import com.business.login.service.LoginService;
import com.business.login.vo.UserVO;
import com.opensymphony.xwork2.ActionSupport;
import com.wisdom.action.BaseAction;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by root on 2017/5/4.
 * 判断管理员登录
 */
public class LoginAction extends ActionSupport implements ServletRequestAware, ServletResponseAware, SessionAware {
    private LoginService loginService;

    public LoginService getLoginService() {
        return loginService;
    }

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    @Autowired
    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected Map<String, Object> session;

//    public LoginAction(HttpServletRequest request, HttpServletResponse response) {
//        System.out.println("2222222222222222222");
//        this.request = request;
//        this.response = response;
//    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        System.out.println("1111111111111111111111111");
        this.request=httpServletRequest;
    }

    @Override
    public void setServletResponse(HttpServletResponse httpServletResponse) {
        System.out.println("3333333333333333333333333333");
        this.response=httpServletResponse;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    /*
            登录请求的后台方法
             */
    public String login(){
        String username=this.request.getParameter("username");
        String password=this.request.getParameter("password");
        boolean res=loginService.checkLoginUser(username,password);
        if(res){
            return "login";
        }
        return "relogin";
    }
}
