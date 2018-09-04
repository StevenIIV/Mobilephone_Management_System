<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018-09-04
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="">
    </div>
    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-bell-o"></span> 提醒
                </a>
            </li>
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-comment-o"></span> 消息 </a>
            </li>
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-calendar"></span> 进度</a>
            </li>
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="tpl-header-list-user-nick"><%=request.getParameter("username")%></span><span class="tpl-header-list-user-ico"> <img src="${pageContext.request.contextPath}/assets/img/user01.png"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li>
                    <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                    <li><a href="index"><span class="am-icon-power-off"></span> 退出</a></li>
                </ul>
            </li>
        </ul>
    </div>
</header>
