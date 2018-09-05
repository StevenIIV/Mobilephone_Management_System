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
                    <td style="width: 25%; vertical-align: top"><button type="button" id="btn3" class="am-btn am-btn-secondary am-round">往来账务</button></td>
                    <td style="width: 25%; vertical-align: top"><button type="button" id="btn4" class="am-btn am-btn-success am-round" onclick="clickBtn('warehouseManagement')">当前库存查询</button></td>
                </tr>
            </table>
        </div>
        <div id="content">
            <form class="am-form">
                <fieldset>
                    <legend><center><p style="font-family: '华文仿宋';font-weight: bold; font-size: 25px">采购进货</p> </center></legend>

                    <div class="am-form-group">
                        <label for="doc-ipt-email-1">邮件</label>
                        <input type="email" class="" id="doc-ipt-email-1" placeholder="输入电子邮件">
                    </div>

                    <div class="am-form-group">
                        <label for="doc-ipt-pwd-1">密码</label>
                        <input type="password" class="" id="doc-ipt-pwd-1" placeholder="设置个密码吧">
                    </div>

                    <div class="am-form-group">
                        <label for="doc-select-1">下拉多选框</label>
                        <select id="doc-select-1">
                            <option value="option1">选项一...</option>
                            <option value="option2">选项二.....</option>
                            <option value="option3">选项三........</option>
                        </select>
                        <span class="am-form-caret"></span>
                    </div>

                    <div class="am-form-group">
                        <label for="doc-ta-1">文本域</label>
                        <textarea class="" rows="5" id="doc-ta-1"></textarea>
                    </div>

                    <p><button type="submit" class="am-btn am-btn-default">提交</button></p>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<%@include file="jqFooter.jsp"%>
</body>
</html>
