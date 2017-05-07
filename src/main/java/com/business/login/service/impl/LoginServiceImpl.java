package com.business.login.service.impl;

import com.business.login.dao.LoginDao;
import com.business.login.service.LoginService;

/**
 * Created by root on 2017/5/4.
 */
public class LoginServiceImpl implements LoginService {
    private LoginDao loginDao;

    public LoginDao getLoginDao() {
        return loginDao;
    }

    public void setLoginDao(LoginDao loginDao) {
        this.loginDao = loginDao;
    }

    @Override
    public boolean checkLoginUser(String username, String password) {
        return loginDao.checkUserLogin(username,password);
    }
}
