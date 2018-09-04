package com.management_system.controller;

import com.management_system.model.User;
import com.management_system.service.UserService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

@Controller
public class UserController {
    @Resource
    private UserService userService;
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession httpSession=request.getSession();
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        response.setContentType("text/html;setchar=UTF-8");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        int id=userService.checkUser(username,password);
        if(id==-1){
            out.print("<script language='javascript'>alert('用户名或密码错误');window.location.href='/Mobilephone/';</script>");
        }
        else{
            User user=userService.getUser(id);
            httpSession.setAttribute("user",user);
            out.print("<script language='javascript'>window.location.href='/Mobilephone/index';</script>");
        }
    }
}
