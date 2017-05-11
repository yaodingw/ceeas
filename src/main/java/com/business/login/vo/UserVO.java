package com.business.login.vo;

import com.wisdom.model.pojo.BasePojo;

/**
 * Created by root on 2017/5/4.
 */
public class UserVO extends BasePojo {
    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
