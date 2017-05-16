package com.business.ccbs.service.impl;

import com.business.ccbs.dao.CcbsDao;
import com.business.ccbs.service.CcbsService;
import com.business.ccbs.vo.CcbsModelVO;
import com.business.ccbs.vo.QueryModel;
import com.common.AppConstant;
import com.wisdom.model.Pagination;
import com.wisdom.model.vo.PaginationVO;

import java.util.List;

/**
 * Created by wisdom on 2017-05-16.
 */
public class CcbsServiceImpl implements CcbsService {
    private CcbsDao ccbsDao;

    public CcbsDao getCcbsDao() {
        return this.ccbsDao;
    }

    public void setCcbsDao(CcbsDao ccbsDao) {
        this.ccbsDao = ccbsDao;
    }

    @Override
    public PaginationVO getCcbsList(QueryModel queryModel,Pagination pag) {
        //对query进行过滤操作
        PaginationVO pagVO=ccbsDao.getCcbsList(queryModel,pag);
        List<CcbsModelVO> list=(List<CcbsModelVO>)pagVO.getRows();
        for(CcbsModelVO temp:list){
            temp.setSchooltype(AppConstant.SCHOOLTYPE.get(temp.getSchooltype()));
            temp.setSchoolnature(AppConstant.schoolnature.get(temp.getSchoolnature()));
            temp.setSchoolproperty(AppConstant.schoolproperty.get(temp.getSchoolproperty()));
        }

        return pagVO;
    }
}
