<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-05
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="tpl-portlet-components" style="margin-top: 20px">
    <div class="portlet-title">
        <div class="caption font-green bold">
            <span class="am-icon-code"></span> 当前库存
        </div>
    </div>
    <div class="tpl-block">
        <div class="am-g">
            <div class="am-u-sm-12 am-u-md-6">
                <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                        <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button>
                        <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>
                        <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                        <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
                    </div>
                </div>
            </div>
            <div class="am-u-sm-12 am-u-md-3">
                <div class="am-form-group">
                    <select data-am-selected="{btnSize: 'sm'}">
                        <option value="option1">所有类别</option>
                        <option value="option2">诺基亚</option>
                        <option value="option3">波导</option>
                        <option value="option4">飞利浦</option>
                        <option value="option5">摩托罗拉</option>
                        <option value="option6">索尼爱立信</option>
                        <option value="option7">三星</option>
                        <option value="option8">NEC</option>
                        <option value="option9">松下</option>
                        <option value="option10">TCL</option>
                        <option value="option11">夏新</option>
                        <option value="option12">联想</option>
                        <option value="option13">LG</option>
                        <option value="option14">电池</option>
                        <option value="option15">充电器</option>
                        <option value="option16">耳机</option>
                        <option value="option17">其它</option>
                    </select>
                </div>
            </div>
            <div class="am-u-sm-12 am-u-md-3">
                <div class="am-input-group am-input-group-sm">
                    <input type="text" class="form-control form-control-solid" style="height: 33px" placeholder="搜索...">
                    <span class="am-input-group-btn"><button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button></span>
                </div>
            </div>
        </div>
        <div class="am-g">
            <div class="am-u-sm-12">
                <form class="am-form">
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
                            <th class="table-check"></th>
                            <th>商品ID</th>
                            <th>商品名称</th>
                            <th>库存量</th>
                            <th>销售总量</th>
                            <th>上次进价</th>
                            <th>成本均价</th>
                            <th>库存总值</th>
                            <th>单位</th>
                            <th>规格型号</th>
                            <th>颜色</th>
                            <th>生产厂商</th>
                            <th><center>操作</center></th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            List<List<Object>> list= (List<List<Object>>) session.getAttribute("warehouselist");
                            for(int i=0;i<list.size();i++){
                        %>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td><%=list.get(i).get(0)%></td>
                            <td><%=list.get(i).get(1)%></td>
                            <td><%=list.get(i).get(2)%></td>
                            <td><%=list.get(i).get(3)%></td>
                            <td><%=list.get(i).get(4)%></td>
                            <td><%=list.get(i).get(5)%></td>
                            <td><%=list.get(i).get(6)%></td>
                            <td><%=list.get(i).get(7)%></td>
                            <td><%=list.get(i).get(8)%></td>
                            <td><%=list.get(i).get(9)%></td>
                            <td><%=list.get(i).get(10)%></td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                        <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</button>
                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                    </div>
                                </div>
                            </td>
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
    <div class="tpl-alert"></div>
</div>