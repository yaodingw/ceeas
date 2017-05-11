package com.model;

import com.wisdom.model.pojo.BasePojo;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by root on 2017/5/4.
 */
@Entity
@Table(name="COLLEGE_INFO")
@Cache(usage= CacheConcurrencyStrategy.READ_WRITE)
public class CollegeInfo extends BasePojo implements Serializable {
    @Id @Column(name="YDID")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private long ydid;
//    NAME	varchar(40)	NO
    @Column(name="NAME",length = 40,nullable = true)
    private String name;
//    LOGO	varchar(100)	YES
    @Column(name="LOGO",length = 100)
    private String logo;

    @Column(name="PROVINCE",length = 100,nullable = true)
    private String province;

    @Column(name="LEVEL",nullable = true)
    private int level;

    @Column(name="TYPE",nullable = true)
    private int type;

    @Column(name="ZHISHU",nullable = true)
    private int zhishu;

    @Column(name = "IS211",nullable = true)
    private int is211;

    @Column(name = "IS985",nullable = true)
    private int is985;

    @Column(name = "TEL",length = 50)
    private String tel;

    @Column(name="ADDRESS",length = 100,nullable = true)
    private String address;

    @Column(name="EMAIL",length = 100)
    private String email;

    @Column(name="URL",length = 100)
    private String url;

    @Column(name = "REMARK",length = 1000)
    private String remark;

    @Column(name = "SEQ")
    private int seq;

    public long getYdid() {
        return ydid;
    }

    public void setYdid(long ydid) {
        this.ydid = ydid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getZhishu() {
        return zhishu;
    }

    public void setZhishu(int zhishu) {
        this.zhishu = zhishu;
    }

    public int getIs211() {
        return is211;
    }

    public void setIs211(int is211) {
        this.is211 = is211;
    }

    public int getIs985() {
        return is985;
    }

    public void setIs985(int is985) {
        this.is985 = is985;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }
}
