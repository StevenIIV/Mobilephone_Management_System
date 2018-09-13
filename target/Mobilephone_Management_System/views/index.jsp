<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-04
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
    <%@include file="jqHeader.jsp"%>
</head>
<body data-type="index">
<jsp:include page="mainHeader.jsp">
    <jsp:param name="username" value="admin"></jsp:param>
</jsp:include>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainNavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">手机销售管理系统</div>
        <!--<div class="tpl-content-scope">
            <div class="note note-info" style="margin-top: 15px">
                <h3>Amaze UI 为移动而生<span class="close" data-close="note"></span></h3>
                <p> Amaze UI 含近 20 个 CSS 组件、20 余 JS 组件，更有多个包含不同主题的 Web 组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。</p>
                <p><span class="label label-danger">提示:</span> Amaze UI 关注中文排版，根据用户代理调整字体，实现更好的中文排版效果。
                </p>
            </div>
        </div>-->
        <div class="row" style="margin-top: 20px">
            <div class="am-u-md-6 am-u-sm-12 row-mb">
                <div class="tpl-portlet">
                    <div class="tpl-portlet-title">
                        <div class="tpl-caption font-green ">
                            <i class="am-icon-cloud-download"></i>
                            <span> Cloud 数据统计</span>
                        </div>
                        <div class="actions">
                            <ul class="actions-btn">
                                <li class="red-on">昨天</li>
                                <li class="green">前天</li>
                                <li class="blue">本周</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="am-u-md-6 am-u-sm-12 row-mb">
                <div class="tpl-portlet">
                    <div class="tpl-portlet-title">
                        <div class="tpl-caption font-red ">
                            <i class="am-icon-bar-chart"></i>
                            <span> Cloud 动态资料</span>
                        </div>
                        <div class="actions">
                            <ul class="actions-btn">
                                <li class="purple-on">昨天</li>
                                <li class="green">前天</li>
                                <li class="dark">本周</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="jqFooter.jsp"%>
</body>
</html>
