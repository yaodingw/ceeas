package com.business.login.dao;

/**
 * Created by root on 2017/5/4.
 */
public interface LoginDao {
    boolean checkUserLogin(String username,String password);
}
