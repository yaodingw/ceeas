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

    <!--自定义样式-->
    <link rel="stylesheet" type="text/css" href="base/question/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="base/question/css/demo.css"/>

    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="base/question/css/component.css"/>

    <style>
        .td1{BORDER-RIGHT: #999999 1px solid; BORDER-top: #999999 1px solid;BORDER-BOTTOM: #999999 1px solid; BORDER-LEFT:#999999 1px solid;
        }
        a {
            font-size: 12px;
            color: #666666;
        }
        a:link {
            text-decoration: none;
            color: #666666;
        }
        a:visited {
            text-decoration: none;
            color: #666666;
        }
        a:hover {
            text-decoration: none;
            color: #FF0033;
        }
        a:active {
            text-decoration: none;
        }
        .bt_lb {
            font-size: 12px;
            color: #006600;
        }
        body,td,th {
            font-size: 12px;
            color: #000000;
        }
        .style4 {
            font-size: 18px;
            font-weight: bold;
            color: #003399;
        }
        #tese td{padding:5px;}
        #tese2 td{padding:5px;}
        .style5 {font-size: 12px; font-weight: bold; color: #0033FF; }

    </style>


    <script src="base/question/js/modernizr.custom.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#adminId").click(function () {
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
                        <p>大学录取线</p>
                    </a>
                </li>
                <li class="active">
                    <a href="nurAction">
                        <i class="ti-pie-chart"></i>
                        <p>帮你选大学</p>
                    </a>
                </li>
                <li>
                    <a href="ppAction">
                        <i class="ti-pie-chart"></i>
                        <p>热门专业</p>
                    </a>
                </li>
               <%-- <li id="adminId"><a><i class="ti-pie-chart"></i>
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
                    <a class="navbar-brand" href="#">帮你选大学</a>
                </div>
                <div class="collapse navbar-collapse">
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div id="questionDetil">
                        <section>
                            <form id="theForm" class="simform" autocomplete="off">
                                <div class="simform-inner">
                                    <ol class="questions">
                                        <li>
                                            <span><label for="q1">你最喜欢的学科是什么?1.数学;2.计算机;3.英语;4.生物;5.其它;</label></span>
                                            <input id="q1" name="q1" type="text"/>
                                        </li>
                                        <li>
                                            <span><label for="q2">你住在哪里?1.东部;2.西部;3.华北;4.华中;5.其它;</label></span>
                                            <input id="q2" name="q2" type="text"/>
                                        </li>
                                        <li>
                                            <span><label for="q3">你打算什么开始工作?1.20-25;2.25-30;3.其它;</label></span>
                                            <input id="q3" name="q3" type="text"/>
                                        </li>
                                        <li>
                                            <span><label for="q4">你喜欢你的蔬菜吗?1.西红柿;2.青椒;3.苦瓜;4.其它;</label></span>
                                            <input id="q4" name="q4" type="text"/>
                                        </li>
                                        <li>
                                            <span><label for="q5">激励你的什么书?1.毛选;2.近代史纲要;3.机械类;4.外语;5.其它;</label></span>
                                            <input id="q5" name="q5" type="text"/>
                                        </li>
                                        <li>
                                            <span><label for="q6">有没有对象或配偶?1.有;2.没有;3.其它</label></span>
                                            <input id="q6" name="q6" type="text"/>
                                        </li>
                                    </ol><!-- /questions -->
                                    <button class="submit" type="submit">发送答案</button>
                                    <div class="controls">
                                        <button class="next"></button>
                                        <div class="progress"></div>
                                        <span class="number">
					                        <span class="number-current"></span>
				                        	<span class="number-total"></span>
				                        </span>
                                        <span class="error-message"></span>
                                    </div><!-- / controls -->
                                </div><!-- /simform-inner -->
                                <span class="final-message"></span>
                            </form><!-- /simform -->
                        </section>
                    </div>
                    <div id="questionRes" style="display:none">
                        <span id="checkData"></span>
                        <table width="910" border="0" align="center" cellpadding="2" style="top:0" id="tese32" class="td1">
                            <tr>
                                <td width="33%" valign="top"><TABLE cellSpacing=1 cellPadding=0 width=290 align=center bgColor=#8080C0 border=1>
                                    <TBODY>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>学校名称</STRONG></DIV></TD>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>专业名称</STRONG></DIV></TD>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('北京大学')">北京大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">能源与资源工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('北京大学')">北京大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">环境工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('清华大学')">清华大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">生物科学</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('北京科技大学')">北京科技大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">物联网工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('北京科技大学')">北京科技大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">环境工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('北京化工大学')">北京化工大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">能源化学工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('北京邮电大学')">北京邮电大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">网络工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('北京邮电大学')">北京邮电大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">物联网工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('华北电力大学')">华北电力大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">能源工程及自动化</td>
                                    </TR>
                                    </TBODY>
                                </TABLE></td>
                                <td width="33%" valign="top"><TABLE cellSpacing=1 cellPadding=0 width=290 align=center bgColor=#8080C0 border=1>
                                    <TBODY>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>学校名称</STRONG></DIV></TD>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>专业名称</STRONG></DIV></TD>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('华北电力大学')">华北电力大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">智能电网信息工程</div></td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国地质大学(北京)')">中国地质大学(北京)</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">地理信息系统</div></td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国地质大学(北京)')">中国地质大学(北京)</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">资源勘查工程</div></td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国农业大学')">中国农业大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">生物工程</div></td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国农业大学')">中国农业大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">种子科学与工程</div></td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('南开大学')">南开大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">微电子学</div></td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('南开大学')">南开大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">资源循环科学与工程</div></td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('天津大学')">天津大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">生物医学工程</div></td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('天津大学')">天津大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF"><div align="left">环境工程</div></td>
                                    </TR>
                                    </TBODY>
                                </TABLE></td>
                                <td width="33%" valign="top" widwidth="33%"><TABLE cellSpacing=1 cellPadding=0 width=290 align=center bgColor=#8080C0 border=1>
                                    <TBODY>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>学校名称</STRONG></DIV></TD>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>专业名称</STRONG></DIV></TD>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('大连理工大学')">大连理工大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">功能材料</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('大连理工大学')">大连理工大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">能源化学工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('东北大学')">东北大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">热能与动力工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('东北大学')">东北大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">环境工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('吉林大学')">吉林大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">电子信息科学与技术</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('吉林大学')">吉林大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">物联网工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('上海交通大学')">上海交通大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">植物生物技术</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('上海交通大学')">上海交通大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">核工程与核技术</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('华东理工大学')">华东理工大学</a></DIV></TD>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left>新能源材料与器件</DIV></TD>
                                    </TR>
                                    </TBODY>
                                </TABLE></td>
                            </tr>
                        </table>
                        <table width="910" border="0" align="center" cellpadding="2"style="top" id="tese2" class="td1">
                            <tr>
                                <td height="5" colspan="3"></td>
                            </tr>
                            <tr>
                                <td width="33%" valign="top"><TABLE cellSpacing=1 cellPadding=0 width=290 align=center bgColor=#8080C0 border=1>
                                    <TBODY>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>学校名称</STRONG></DIV></TD>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>专业名称</STRONG></DIV></TD>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('华东理工大学')">华东理工大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">资源循环科学与工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('东华大学')">东华大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">功能材料</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('东华大学')">东华大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">能源与环境系统工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('东南大学')">东南大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">新能源材料与器件</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('东南大学')">东南大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">传感网技术</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('江南大学')">江南大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">生物技术</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('江南大学')">江南大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">物联网工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国矿业大学')">中国矿业大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">材料科学与工程（能源材料方向）</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国矿业大学')">中国矿业大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">化学工程与工艺（能源化工方向）</td>
                                    </TR>
                                    </TBODY>
                                </TABLE></td>
                                <td width="33%" valign="top"><TABLE cellSpacing=1 cellPadding=0 width=290 align=center bgColor=#8080C0 border=1>
                                    <TBODY>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>学校名称</STRONG></DIV></TD>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>专业名称</STRONG></DIV></TD>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('河海大学')">河海大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">新能源科学与工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('河海大学')">河海大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">物联网工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国药科大学')">中国药科大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">生物制药</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国药科大学')">中国药科大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">药物化学</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('浙江大学')">浙江大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">材料科学与工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('浙江大学')">浙江大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">电子科学与技术</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('合肥工业大学')">合肥工业大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">新能源材料与器件</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('合肥工业大学')">合肥工业大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">物联网工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('山东大学')">山东大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">热能与动力工程</td>
                                    </TR>
                                    </TBODY>
                                </TABLE></td>
                                <td width="33%" valign="top" widwidth="33%"><TABLE cellSpacing=1 cellPadding=0 width=290 align=center bgColor=#8080C0 border=1>
                                    <TBODY>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>学校名称</STRONG></DIV></TD>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff height=20><DIV align=left><STRONG>专业名称</STRONG></DIV></TD>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('山东大学')">山东大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">环境工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国石油大学(华东)')">中国石油大学(华东)</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">环保设备工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国海洋大学')">中国海洋大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">环境工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('中国海洋大学')">中国海洋大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">海洋资源开发技术</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('武汉大学')">武汉大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">核工程与核技术</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('武汉大学')">武汉大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">环境工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('华中科技大学')">华中科技大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">新能源科学与工程</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('华中科技大学')">华中科技大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">光电子材料与器件</td>
                                    </TR>
                                    <TR>
                                        <TD style="PADDING-LEFT: 3px" bgColor=#ffffff><DIV align=left><a target="_top" href="javascript:so('武汉理工大学')">武汉理工大学</a></DIV></TD>
                                        <td bordercolorlight="#333" bordercolordark="#333" bgcolor="#FFFFFF">物联网工程</td>
                                    </TR>
                                    </TBODY>
                                </TABLE></td>
                            </tr>
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

<script type="text/javascript" src="base/question/js/classie.js"></script>
<script type="text/javascript" src="base/question/js/stepsForm.js"></script>
<script type="text/javascript">
    var theForm = document.getElementById('theForm');

    new stepsForm(theForm, {
        onSubmit: function (form) {
            // hide form
            classie.addClass(theForm.querySelector('.simform-inner'), 'hide');

            /*
             form.submit()
             or
             AJAX request (maybe show loading indicator while we don't have an answer..)
             */

            // let's just simulate something...
            var messageEl = theForm.querySelector('.final-message');
            var q1=theForm.querySelector("#q1");
//            messageEl.innerHTML = '谢谢你们！我们会联系你的。'+q1.value;
//            classie.addClass(messageEl, 'show');
            var simform=$("#theForm .simform-inner").attr("class");
            if(simform.indexOf("hide")>0){
                var q1=theForm.querySelector("#q1").value;
                var q2=theForm.querySelector("#q2").value;
                var q3=theForm.querySelector("#q3").value;
                var q4=theForm.querySelector("#q4").value;
                var q5=theForm.querySelector("#q5").value;
                var q6=theForm.querySelector("#q6").value;

                $("#checkData").html("你的选择是："+q1+"、"+q2+"、"+q3+"、"+q4+"、"+q5+"、"+q6);
                $("#questionDetil").css("display","none");
                $("#questionRes").css("display","");
            }
        }
    });

</script>


</body>


</html>
