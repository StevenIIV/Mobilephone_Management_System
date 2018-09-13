<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-04
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    window.onload=function(){
        var page=${page};
        if(page==1)  document.getElementById("index").className+=" active";
        else if(page==2) document.getElementById("importManagement").className+=" active";
        else if(page==3) document.getElementById("salesManagement").className+=" active";
        else if(page==4) document.getElementById("warehouse").className+=" active";
        else if(page==5) document.getElementById("manufacturerStatistics").className+=" active";
        else if(page==6) document.getElementById("manufacturerStatistics").className+=" active";
    }
</script>
<div class="tpl-left-nav tpl-left-nav-hover">
    <div class="tpl-left-nav-title">列表</div>
    <div class="tpl-left-nav-list">
        <ul class="tpl-left-nav-menu">
            <li class="tpl-left-nav-item">
                <a id="index" href="index" class="nav-link">
                    <i class="am-icon-home"></i>
                    <span>首页</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="importManagement" href="importManagement" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-user-plus"></i>
                    <span>进货管理</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="salesManagement" href="salesManagement" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-line-chart"></i>
                    <span>销售管理</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="warehouse" href="warehouse" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-suitcase"></i>
                    <span>库存管理</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-table"></i>
                    <span>统计报表</span>
                    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                </a>
                <ul class="tpl-left-nav-sub-menu" style="display: block;">
                    <li>
                        <a id="manufacturerStatistics" href="manufacturerStatistics" class="">
                            <i class="am-icon-angle-right"></i>
                            <span>供应商统计</span>
                            <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                        </a>

                        <a href="#">
                            <i class="am-icon-angle-right"></i>
                            <span>商品采购统计</span>
                        </a>
                        <a id="agentStatistics" href="agentStatistics" class="">
                            <i class="am-icon-angle-right"></i>
                            <span>业务员统计</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="tpl-left-nav-item">
                <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-wpforms"></i>
                    <span>日常管理</span>
                    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                </a>
                <ul class="tpl-left-nav-sub-menu">
                    <li>
                        <a href="#">
                            <i class="am-icon-angle-right"></i>
                            <span>供应商管理</span>
                            <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                        </a>
                        <a href="#">
                            <i class="am-icon-angle-right"></i>
                            <span>财务综合管理</span>
                        </a>
                        <a href="#">
                            <i class="am-icon-angle-right"></i>
                            <span>业务员管理</span>
                        </a>
                        <a href="#">
                            <i class="am-icon-angle-right"></i>
                            <span>合同管理</span>
                        </a>
                        <a href="#">
                            <i class="am-icon-angle-right"></i>
                            <span>报价管理</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="tpl-left-nav-item">
                <a href="#" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-cog"></i>
                    <span>系统设置</span>
                </a>
            </li>
        </ul>
    </div>
</div>
