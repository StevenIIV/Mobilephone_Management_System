<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-08
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="tpl-portlet-components" style="margin-top: 20px">
    <div class="portlet-title">
        <div class="caption font-green bold">
            <span class="am-icon-code"></span> 往来账务
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
                            <th>商品名称</th>
                            <th>单号</th>
                            <th>类型</th>
                            <th>应付金额</th>
                            <th>实付金额</th>
                            <th>欠款金额</th>
                            <th>优惠金额</th>
                            <th>经办人</th>
                            <th>操作员</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>普通供货商</td>
                            <td>2010-08-19</td>
                            <td>手机</td>
                            <td>CJ100819010001</td>
                            <td>进货支付</td>
                            <td>2500</td>
                            <td>2500</td>
                            <td>0</td>
                            <td>0</td>
                            <td>小王</td>
                            <td>admin</td>
                        </tr>
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
    <div class="tpl-alert"></div>
</div>