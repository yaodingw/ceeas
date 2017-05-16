package com.business.ccbs.service;

import com.business.ccbs.vo.QueryModel;
import com.wisdom.model.Pagination;
import com.wisdom.model.vo.PaginationVO;

/**
 * Created by wisdom on 2017-05-16.
 */
public interface CcbsService {
    PaginationVO getCcbsList(QueryModel queryModel, Pagination pag);
}
