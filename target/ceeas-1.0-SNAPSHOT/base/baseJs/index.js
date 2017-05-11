$(function(){
    $('em').on('click',function(){
        var that=$(this);
        // alert(that.attr("id"));
        that.addClass('clf-active');
        that.siblings().removeClass('clf-active');
        //每次点击都请求地址，请求参数
        //获取学校schoolplace
        var schoolplace=$("#schoolplace .clf-active").html();
        var schoolmajor=$("#schoolmajor .clf-active").attr("id");
        var schoolpt=$("#schoolpt .clf-active").attr("id");
        var schoogc=$("#schoogc .clf-active").attr("id");
        alert("院校省份："+schoolplace+"、学院分类："+schoolmajor+"、学历层次："+schoolpt+"、特殊性质："+schoogc);

    });
})