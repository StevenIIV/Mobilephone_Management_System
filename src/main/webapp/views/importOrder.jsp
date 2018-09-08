<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-05
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                            <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;vertical-align: middle;"><label>收货仓库</label></div>
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