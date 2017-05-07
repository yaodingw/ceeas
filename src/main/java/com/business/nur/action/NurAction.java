package com.business.nur.action;

import com.business.ccbs.vo.QueryModel;
import com.opensymphony.xwork2.ActionSupport;
import com.wisdom.action.BaseAction;

/**
 * Created by root on 2017/5/4.
 * 帮你选大学
 */
public class NurAction extends BaseAction<QueryModel> {
    /*
    用作页面跳转
     */
    public String nurIndex(){
        return "nurIndex";
    }
}
