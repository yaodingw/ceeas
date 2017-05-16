package com.business.ccbs.vo;

import com.wisdom.model.Pagination;
import com.wisdom.util.StringUtil;

/**
 * Created by root on 2017/5/4.
 */
public class QueryModel {
    private String schoolPlace; //省份
    private String schoolMajor; //院校分类
    private String schoolPT;//学院层次
    private String schoolGC ;//特殊性质
    private String stuPlace; //生源地
    private String stuScore; //学生分数

    public String getStuPlace() {
        return this.stuPlace;
    }

    public void setStuPlace(String stuPlace) {
        if(StringUtil.isNullOrEmpty(stuPlace)){
            this.stuPlace = stuPlace;
        }
    }

    public String getStuScore() {
        return this.stuScore;
    }

    public void setStuScore(String stuScore) {
        if(StringUtil.isNullOrEmpty(stuScore))
            this.stuScore = stuScore;
    }

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
        if(StringUtil.isNullOrEmpty(schoolPlace))
            if(!"全部".equals(schoolPlace)){
                this.schoolPlace = schoolPlace;
            }
    }

    public String getSchoolMajor() {
        return schoolMajor;
    }

    public void setSchoolMajor(String schoolMajor) {
        if(StringUtil.isNullOrEmpty(schoolMajor))
            //String newStr = schoolMajor.replaceAll("^m(0+)", "");
            schoolMajor=schoolMajor.replaceAll("^(m0+)","");
            if(StringUtil.isNullOrEmpty(schoolMajor)){
                int temp=Integer.valueOf(schoolMajor)-1;
                schoolMajor=temp+"";
                this.schoolMajor = schoolMajor;
            }

    }

    public String getSchoolPT() {
        return schoolPT;
    }

    public void setSchoolPT(String schoolPT) {
        if(StringUtil.isNullOrEmpty(schoolPT)){
            schoolPT=schoolPT.replaceAll("^(p0+)","");
            if(schoolPT.equals("8")){
                schoolPT="0";
            }
            this.schoolPT = schoolPT;
        }
    }

    public String getSchoolGC() {
        return schoolGC;
    }

    public void setSchoolGC(String schoolGC) {
        if(StringUtil.isNullOrEmpty(schoolGC)){
            schoolGC=schoolGC.replaceAll("^(g0+)","");
            if(schoolGC.equals("2")){
                schoolGC="0";
            }
            this.schoolGC = schoolGC;

        }
    }
}
