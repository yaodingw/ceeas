<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>高考志愿查询辅助系统</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet"/>

    <link href="assets/css/index.css" rel="stylesheet"/>

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">

    <link href="css/prppof.css" rel="stylesheet"/>

    <link rel="stylesheet" type="text/css" href="base/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="base/easyui/themes/icon.css">

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Checkbox, Radio & Switch Plugins -->
    <script src="assets/js/bootstrap-checkbox-radio.js"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
    <script src="assets/js/paper-dashboard.js"></script>

    <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>

    <script src="base/baseJs/index.js"></script>
    <script src="base/easyui/jquery.min.js"></script>
    <script src="base/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#adminId").click(function(){
                $("#adminSon").toggle();
            })
        })


    </script>

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="index.jsp" class="simple-text">
                    高考志愿填报查询辅助系统
                </a>
                <a href="login.jsp" style="position: absolute;left: 100px;font-size: 16px;">登录/注册</a>
            </div>

            <ul class="nav">
                <li>
                    <a href="ccbsAction">
                        <i class="ti-pie-chart"></i>
                        <p>估分选大学</p>
                    </a>
                </li>
                <li>
                    <a href="cmsAction">
                        <i class="ti-pie-chart"></i>
                        <p>估分选专业</p>
                    </a>
                </li>
                <li>
                    <a href="nurAction">
                        <i class="ti-pie-chart"></i>
                        <p>帮你选大学</p>
                    </a>
                </li>
                <li class="active">
                    <a href="ppAction">
                        <i class="ti-pie-chart"></i>
                        <p>热门专业</p>
                    </a>
                </li>
                <%--<li id="adminId"><a><i class="ti-pie-chart"></i>
                    <p>管理员功能</p></a>
                    <ul id="adminSon" style="display:none">
                        <li><a href="editCollegeAction">编辑学校</a></li>
                        <li><a href="editMajorAction">编辑专业</a></li>
                    </ul>
                </li>--%>

            </ul>
        </div>
    </div>

    <!--界面右边面板-->
    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">热门专业</a>
                </div>
                <div class="collapse navbar-collapse">
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="dataContent">
                        <table class="easyui-datagrid" style="width:100%;height:auto"
                               data-options="singleSelect:true,collapsible:true,url:'jsonData/popPor/ppData.json',method:'get',pagination:'true'">
                            <thead>
                            <tr>
                                <th data-options="field:'seq',width:94,align:'center'">排名</th>
                                <th data-options="field:'majorName',width:160,align:'center'">专业名称</th>
                                <th data-options="field:'cengci',width:130,align:'center'">专业层次</th>
                                <th data-options="field:'zytype',width:130,align:'center'">专业类别</th>
                                <th data-options="field:'yuanxiao',width:130,align:'center'">开设院校	</th>
                                <th data-options="field:'redu',width:124,align:'center'">人气值</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <div class="copyright pull-right">
                    &copy;
                    <script>document.write(new Date().getFullYear())</script>
                    , contact us <a href="https://github.com/yaodingw" target="_blank"
                                    title="github">yaodingw@gmail.com</a>
                </div>
            </div>
        </footer>

    </div>
</div>


</body>


</html>
