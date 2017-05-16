<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2017/4/19
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<!--头部部分结束！！-->
<!-- 主体内容 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="main center grid margin15">
    <div class="left w-670">
        <!--查国内大学-->
        <div class="classify grid">
            <div class="clfloor grid">
                <span class="schTit left">院校省份</span>
                <i class="ti-angle-right"></i>
                <div class="sch-content left lin-seachbox-cs grid li-w911" id="schoolplace">
                    <em id="s00" class="clf-active">全部</em>
                    <em id="s01" >北京</em>
                    <em id="s02" >天津</em>
                    <em id="s03" >河北</em>
                    <em id="s04" >河南</em>
                    <em id="s05" >山东</em>
                    <em id="s06" >山西</em>
                    <em id="s07" >陕西</em>
                    <em id="s08" >内蒙古</em>
                    <em id="s09" >辽宁</em>
                    <em id="s10" >吉林</em>
                    <em id="s11" >黑龙江</em>
                    <em id="s12" >上海</em>
                    <em id="s13" >江苏</em>
                    <em id="s14" >安徽</em>
                    <em id="s15" >江西</em>
                    <em id="s16" >湖北</em>
                    <em id="s17"  >湖南</em>
                    <em id="s18" >重庆</em>
                    <em id="s19" >四川</em>
                    <em id="s20" >贵州</em>
                    <em id="s21" >云南</em>
                    <em id="s22" >广东</em>
                    <em id="s23" >广西</em>
                    <em id="s24" >福建</em>
                    <em id="s25"  style="margin-left:34px;">甘肃</em>
                    <em id="s26" >宁夏</em>
                    <em id="s27" >新疆</em>
                    <em id="s28" >西藏</em>
                    <em id="s29" >海南</em>
                    <em id="s30" >浙江</em>
                    <em id="s31" >青海</em>
                    <em id="s32" >香港</em>
                    <em id="s33" >澳门</em>
                </div>
            </div>
            <div class="clfloor grid">
                <span class="schTit left">院校分类</span>
                <i class="ti-angle-right"></i>
                <div class="sch-content left lin-seachbox-cs" id="schoolmajor">
                    <em id="m00"  class="clf-active">全部</em>
                    <em id="m01" >综合</em>
                    <em id="m02" >理工</em>
                    <em id="m03" >农林</em>
                    <em id="m04" >医药</em>
                    <em id="m05" >师范</em>
                    <em id="m06" >语言</em>
                    <em id="m07" >财经</em>
                    <em id="m08" >政法</em>
                    <em id="m09" >体育</em>
                    <em id="m10" >艺术</em>
                    <em id="m11" >民族</em>
                    <em id="m12" >军事</em>
                    <em id="m13" >其他</em>
                </div>
            </div>
            <div class="clfloor grid">
                <span class="schTit left">学历层次</span>
                <i class="ti-angle-right"></i>
                <div class="sch-content left con2 lin-seachbox-cs" id="schoolpt">
                    <em id="p00"  class="clf-active">全部</em>
                    <em id="p01" >普通本科</em>
                    <em id="p02" >独立学院</em>
                    <em id="p03" >高职高专</em>
                    <em id="p04" >中外合作办学</em>
                    <em id="p05" >远程教育学院</em>
                    <em id="p06" >HND项目</em>
                    <em id="p07" >成人教育</em>
                    <em id="p08" >其他</em>
                </div>
            </div>
            <div class="clfloor grid">
                <span class="schTit left">特殊属性</span>
                <i class="ti-angle-right"></i>
                <div class="sch-content left lin-seachbox-cs" id="schoogc">
                    <em id="g00"  class="clf-active">全部</em>
                    <em id="g01" >教育部直属</em>
                </div>
            </div>
            <div class="clfloor lin-seachbox-condi lin-hide">
                <span class="schTit left">已选条件</span>
                <i class="ti-angle-right"></i>
                <div class="sch-content marl100 lin-seachbox-choose"></div>
            </div>
        </div>
    </div>
</div>