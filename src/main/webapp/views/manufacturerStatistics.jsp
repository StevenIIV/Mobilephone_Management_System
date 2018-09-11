<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-11
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>manufacturerStatistics</title>
    <%@include file="jqHeader.jsp"%>
</head>
<body>
<jsp:include page="mainHeader.jsp">
    <jsp:param name="username" value="admin"></jsp:param>
</jsp:include>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainNavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div class="tpl-portlet-components" style="margin-top: 20px">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 供应商统计
                </div>
            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-check"></th>
                                    <th>供货商名称</th>
                                    <th>日期</th>
                                    <th>单号</th>
                                    <th>类型</th>
                                    <th>应付金额</th>
                                    <th>实付金额</th>
                                    <th>优惠金额</th>
                                    <th>经办人</th>
                                    <th>操作员</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    List<List<Object>> list= (List<List<Object>>) session.getAttribute("importorderlist");
                                    for(int i=0;i<list.size();i++){
                                %>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <%
                                        for(int j=0;j<=9;j++){
                                            if(j==2) continue;
                                    %>
                                    <td><%=list.get(i).get(j)%></td>
                                    <%
                                        }
                                    %>
                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>

                            <div class="am-cf">
                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled"><a href="#">«</a></li>
                                        <li class="am-active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="jqFooter.jsp"%>
</body>
</html>
