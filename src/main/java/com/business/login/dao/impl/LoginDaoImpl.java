package com.business.login.dao.impl;

import com.business.login.dao.LoginDao;
import com.business.login.vo.UserVO;
import com.wisdom.dao.impl.PaginationDaoImpl;
import org.hibernate.Query;


/**
 * Created by root on 2017/5/4.
 */
public class LoginDaoImpl extends PaginationDaoImpl<UserVO> implements LoginDao {
    @Override
    public boolean checkUserLogin(String username, String password) {
        String sql="select count(*) from admin where NAME='"+username+"' and PASSWORD='"+password+"'";
        Query query=this.getCurrentSession().createSQLQuery(sql);
        String res=query.uniqueResult().toString();
        boolean flag=false;
        if("0".equals(res)){
            flag=false;
        }else{
            flag=true;
        }
        return flag;
    }
}
