package com.business.ccbs.dao.impl;

import com.business.ccbs.dao.CcbsDao;
import com.business.ccbs.vo.CcbsModelVO;
import com.business.ccbs.vo.QueryModel;
import com.wisdom.dao.impl.BaseDaoImpl;
import com.wisdom.model.Pagination;
import com.wisdom.model.vo.PaginationVO;
import com.wisdom.util.StringUtil;
import org.hibernate.Query;
import org.hibernate.transform.Transformers;

import java.util.List;

/**
 * Created by wisdom on 2017-05-16.
 */
public class CcbsDaoImpl extends BaseDaoImpl implements CcbsDao {
    @Override
    public List<CcbsModelVO> getCcbsData(QueryModel queryModel) {

        return null;
    }

    @Override
    public PaginationVO getCcbsList(QueryModel queryModel, Pagination pag) {
        PaginationVO paginationVO = new PaginationVO();
        StringBuilder sql=new StringBuilder("SELECT c.Name as schoolname,c.Province as province,c.Level as schooltype,c.Type as schoolproperty,c.Zhishu as schoolnature from COLLEGE_INFO c where 1=1 ");
        if(StringUtil.isNullOrEmpty(queryModel.getSchoolPlace())){
            sql.append(" and c.Province='"+queryModel.getSchoolPlace()+"' ");
        }
        if(StringUtil.isNullOrEmpty(queryModel.getSchoolMajor()))
            sql.append(" and c.Type='"+queryModel.getSchoolMajor()+"'");
        if(StringUtil.isNullOrEmpty(queryModel.getSchoolPT()))
            sql.append(" and c.Level='"+queryModel.getSchoolPT()+"'");
        if(StringUtil.isNullOrEmpty(queryModel.getSchoolGC()))
            sql.append(" and c.Zhishu='"+queryModel.getSchoolGC()+"'");
        Query query=this.getCurrentSession().createSQLQuery(sql.toString())
                .addScalar("schoolname")
                .addScalar("province")
                .addScalar("schooltype")
                .addScalar("schoolproperty")
                .addScalar("schoolnature")
                .setResultTransformer(Transformers.aliasToBean(CcbsModelVO.class));

        int total = 0;
        List<CcbsModelVO> list=query.list();
        if (!list.isEmpty()) {
            total=list.size();
        }
        if(total > 0){
            query.setFirstResult(((pag.getCurrentPage()<1?1:pag.getCurrentPage())-1)*pag.getPageSize());
            query.setMaxResults(pag.getPageSize());
            list=query.list();
        }

        paginationVO.setTotal(total);
        paginationVO.setRows(list);
        return paginationVO;
    }
}
