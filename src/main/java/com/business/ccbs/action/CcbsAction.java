package com.business.ccbs.action;

import com.business.ccbs.vo.QueryModel;
import com.wisdom.action.BaseAction;
import com.wisdom.exception.CheckedException;

/**
 * Created by root on 2017/5/4.
 */
public class CcbsAction extends BaseAction<QueryModel>{

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
