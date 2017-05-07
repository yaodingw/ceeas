package com.business.ccbs.vo;

import com.wisdom.model.Pagination;

/**
 * Created by root on 2017/5/4.
 */
public class QueryModel {
    private String schoolPlace; //省份
    private String schoolMajor; //院校分类
    private String schoolPT;//学院层次
    private String schoolGC ;//特殊性质

    private Pagination pagina;

    public Pagination getPagina() {
        return pagina;
    }

    public void setPagina(Pagination pagina) {
        this.pagina = pagina;
    }

    public String getSchoolPlace() {
        return schoolPlace;
    }

    public void setSchoolPlace(String schoolPlace) {
        this.schoolPlace = schoolPlace;
    }

    public String getSchoolMajor() {
        return schoolMajor;
    }

    public void setSchoolMajor(String schoolMajor) {
        this.schoolMajor = schoolMajor;
    }

    public String getSchoolPT() {
        return schoolPT;
    }

    public void setSchoolPT(String schoolPT) {
        this.schoolPT = schoolPT;
    }

    public String getSchoolGC() {
        return schoolGC;
    }

    public void setSchoolGC(String schoolGC) {
        this.schoolGC = schoolGC;
    }
}
