package com.business.ccbs.dao;

import com.business.ccbs.vo.CcbsModelVO;
import com.business.ccbs.vo.QueryModel;
import com.wisdom.model.Pagination;
import com.wisdom.model.vo.PaginationVO;

import java.util.List;

/**
 * Created by wisdom on 2017-05-16.
 */
public interface CcbsDao {
    List<CcbsModelVO> getCcbsData(QueryModel queryModel);

    PaginationVO getCcbsList(QueryModel queryModel, Pagination pag);
}
