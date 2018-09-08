<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-04
  Time: 20:32
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
        <div style="margin-left: 50px">
            <table style="height: 40px">
                <tr>
                    <td style="width: 25%; vertical-align: top"><button type="button" id="btn1" class="am-btn am-btn-primary am-round" onclick="clickBtn('importOrder')">采购进货</button></td>
                    <td style="width: 25%; vertical-align: top"><button type="button" id="btn2" class="am-btn am-btn-warning am-round">采购退货</button></td>
                    <td style="width: 25%; vertical-align: top"><button type="button" id="btn3" class="am-btn am-btn-secondary am-round" onclick="clickBtn('importOrderQuery')">往来账务</button></td>
                    <td style="width: 25%; vertical-align: top"><button type="button" id="btn4" class="am-btn am-btn-success am-round" onclick="clickBtn('warehouseManagement')">当前库存查询</button></td>
                </tr>
            </table>
        </div>
        <div id="content">

        </div>
    </div>
</div>
<%@include file="jqFooter.jsp"%>
</body>
</html>
