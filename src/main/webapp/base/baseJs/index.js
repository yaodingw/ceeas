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
        var stuPlace=$("#stuPlace").find("option:selected").val();
        var stuScore=$("#searchInput").val();
        // =$("#stuPlace").text();
        // alert("院校省份："+schoolplace+"、学院分类："+schoolmajor+"、学历层次："+schoolpt+"、特殊性质："+schoogc);
        getCcbsList(schoolplace,schoolmajor,schoolpt,schoogc,stuPlace,stuScore);


    });
})
function getCcbsList(schoolplace,schoolmajor,schoolpt,schoogc,stuPlace,stuScore){
    $("#ccbsDatagrid").datagrid({
        url : 'http://localhost:8080/ccbs/ccbs_getCcbsList.action',
        pagination : true,
        nowrap : true,
        border : true,
        striped : true,
        queryParams : {
            schoolplace : 	schoolplace,//当前页面的菜单代码
            schoolmajor:schoolmajor,
            schoolpt:schoolpt,
            schoogc:schoogc,
            stuPlace:stuPlace,
            stuScore:stuScore
        },
        onLoadSuccess: function (data){
        }
    })
}
