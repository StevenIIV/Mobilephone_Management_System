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
            <form class="am-form am-form-horizontal">
                <fieldset>
                    <legend><center><p style="font-family: '华文仿宋';font-weight: bold; font-size: 25px">采购进货</p> </center></legend>
                    <center>
                    <table>
                        <tr>
                            <td>
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>供应商</label></div>
                                    <div style="float:left; margin-left: 20px">
                                        <select style="width: 180px">
                                            <option value="option1">普通供货商</option>
                                            <option value="option2">波导供货商</option>
                                            <option value="option3">飞利浦供货商</option>
                                            <option value="option4">摩托罗拉供货商</option>
                                            <option value="option5">诺基亚供货商</option>
                                            <option value="option6">索尼爱立信供货商</option>
                                            <option value="option7">三星供货商</option>
                                        </select>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;vertical-align: middle;"><label>仓库</label></div>
                                    <div style="float:left; margin-left: 20px">
                                        <select style="width: 180px">
                                            <option value="option1">主仓库</option>
                                            <option value="option2">仓库1</option>
                                        </select>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;vertical-align: middle;"><label>时间</label></div>
                                    <div style="float:left; margin-left: 20px"><font color="blue">null</font></div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;vertical-align: middle;"><label>商品名称</label></div>
                                    <div style="float:left;margin-left: 20px;width: 400px;"><input type="text"></div>
                                </div>
                            </th>
                            <td>
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>单位</label></div>
                                    <div style="float:left;margin-left: 20px;width: 100px;"><input type="text"></div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="3">
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>规格型号</label></div>
                                    <div style="float:left;margin-left: 20px;width: 400px;"><input type="text"></div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3">
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>颜色</label></div>
                                    <div style="float:left;margin-left: 20px;width: 400px;"><input type="text"></div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>单价</label></div>
                                    <div style="float:left;margin-left: 20px;width: 200px"><input type="text"></div>
                                </div>
                            </td>
                            <td>
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>数量</label></div>
                                    <div style="float:left;margin-left: 20px;width: 200px"><input type="text"></div>
                                </div>
                            </td>
                            <td>
                                <div class="am-form-group">
                                    <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>总金额</label></div>
                                    <div style="float:left;margin-left: 20px;width: 200px"><input type="text"></div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <p><button type="submit" class="am-btn am-btn-default">提交</button></p>
                    </center>
                </fieldset>

            </form>
        </div>
    </div>
</div>
<%@include file="jqFooter.jsp"%>
</body>
</html>
