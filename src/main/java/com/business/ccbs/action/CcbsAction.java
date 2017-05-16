package com.business.ccbs.action;

import com.business.ccbs.service.CcbsService;
import com.business.ccbs.vo.QueryModel;
import com.wisdom.action.BaseAction;
import com.wisdom.exception.CheckedException;
import com.wisdom.model.Pagination;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by root on 2017/5/4.
 */
public class CcbsAction extends BaseAction<QueryModel> implements ServletRequestAware, ServletResponseAware, SessionAware {
    private Object result;
    @Autowired
    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected Map<String, Object> session;
    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request=httpServletRequest;
    }

    @Override
    public void setServletResponse(HttpServletResponse httpServletResponse) {
        this.response=httpServletResponse;
    }

    @Override
    public Object getResult() {
        return this.result;
    }

    @Override
    public void setResult(Object result) {
        this.result = result;
    }

    private CcbsService ccbsService;

    public CcbsService getCcbsService() {
        return this.ccbsService;
    }

    public void setCcbsService(CcbsService ccbsService) {
        this.ccbsService = ccbsService;
    }

    public String getCcbsList(){
        QueryModel queryModel=new QueryModel();
        int page=Integer.valueOf(this.request.getParameter("page"));
        int rows=20;

        //queryModel.getSchoolPlace();//省份
        //queryModel.getSchoolGC();//特殊性质
        //queryModel.getSchoolMajor(); //院校分类
        //queryModel.getSchoolPT();//学院层次

        String place=this.request.getParameter("schoolplace");
        String schoolmajor=this.request.getParameter("schoolmajor");
        String schoolpt=this.request.getParameter("schoolpt");
        String schoogc=this.request.getParameter("schoogc");
        String stuPlace=this.request.getParameter("stuPlace");
        String stuScore=this.request.getParameter("stuScore");

        queryModel.setSchoolPlace(place);
        queryModel.setSchoolMajor(schoolmajor);
        queryModel.setSchoolPT(schoolpt);
        queryModel.setSchoolGC(schoogc);
        queryModel.setStuPlace(stuPlace);
        queryModel.setStuScore(stuScore);

        Pagination p=new Pagination();
        p.setCurrentPage(page);
        p.setPageSize(rows);
        result=ccbsService.getCcbsList(queryModel,p);
        System.out.println(result);

        return SUCCESS;
    }

    //知分选大学界面
    public String getCcbsData() throws CheckedException {

        int i=0;
        for (i=0;i<10;i++){
            System.out.println(i);
        }
        return SUCCESS;
    }

    public String ccbsIndex(){
        return "ccbsIndex";
    }

}
