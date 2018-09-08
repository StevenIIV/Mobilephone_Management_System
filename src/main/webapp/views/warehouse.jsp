<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-08
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ImportManagement</title>
    <%@include file="jqHeader.jsp"%>
    <script>
        function loadView(name) {
            $("#content").empty();
            $("#content").load(name);
        }
        function clickBtn(name) {
            loadView(name)
        }
    </script>
</head>
<body>
<jsp:include page="mainHeader.jsp">
    <jsp:param name="username" value="admin"></jsp:param>
</jsp:include>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainNavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <%@include file="warehouseManagement.jsp"%>
    </div>
</div>
<%@include file="jqFooter.jsp"%>
</body>
</html>

