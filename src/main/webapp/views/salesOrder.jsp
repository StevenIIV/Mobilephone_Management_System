<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-08
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form class="am-form am-form-horizontal" action="/Mobilephone/sales.do" method="post">
    <fieldset>
        <legend><center><p style="font-family: '华文仿宋';font-weight: bold; font-size: 25px">商品销售</p> </center></legend>
        <center>
            <table>
                <tr>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>普通客户</label></div>
                            <div style="float:left; margin-left: 20px">
                                <select style="width: 180px" name="customer">
                                    <option value="普通客户">普通客户</option>
                                    <option value="五星手机大卖场">五星手机大卖场</option>
                                    <option value="广志手机销售中心">广志手机销售中心</option>
                                    <option value="三星手机专卖店">三星手机专卖店</option>
                                </select>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;vertical-align: middle;"><label>出货仓库</label></div>
                            <div style="float:left; margin-left: 20px">
                                <select style="width: 180px" name="ck">
                                    <option value="主仓库">主仓库</option>
                                    <option value="仓库1">仓库1</option>
                                </select>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;vertical-align: middle;"><label>销售日期</label></div>
                            <div style="float:left; margin-left: 20px"><font color="blue">null</font></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th colspan="3">
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;vertical-align: middle;"><label>订单编号</label></div>
                            <div style="float:left;margin-left: 20px;width: 400px;"><input type="text" name="id"></div>
                        </div>
                    </th>
                </tr>
                <tr>
                    <th colspan="2">
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;vertical-align: middle;"><label>商品名称</label></div>
                            <div style="float:left;margin-left: 20px;width: 400px;"><input type="text" name="goods_name"></div>
                        </div>
                    </th>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>单位</label></div>
                            <div style="float:left;margin-left: 20px;width: 100px;"><input type="text" name="unit"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th colspan="3">
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>规格型号</label></div>
                            <div style="float:left;margin-left: 20px;width: 400px;"><input type="text" name="goods_type" ></div>
                        </div>
                    </th>
                </tr>
                <tr>
                <tr>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>颜色</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="color"></div>
                        </div>
                    </td>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>折扣率</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="discount"></div>
                        </div>
                    </td>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>折后价</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="discount_price"></div>
                        </div>
                    </td>
                </tr>
                </tr>
                <tr>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>单价</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="price"></div>
                        </div>
                    </td>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>数量</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="num"></div>
                        </div>
                    </td>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>总金额</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="totprice"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>应付金额</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="yfje"></div>
                        </div>
                    </td>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>实付金额</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="sfje"></div>
                        </div>
                    </td>
                    <td>
                        <div class="am-form-group">
                            <div style="float:left;height: 37px;width: 65px;line-height: 37px;text-align: center;vertical-align: middle;"><label>优惠金额</label></div>
                            <div style="float:left;margin-left: 20px;width: 200px"><input type="text" name="yhje"></div>
                        </div>
                    </td>
                </tr>
            </table>
            <p><button type="submit" class="am-btn am-btn-default">提交</button></p>
        </center>
    </fieldset>
</form>