package com.runoob.test;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by Gu Xin on 2017/10/18.
 */
public class TestFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {
        // 获取初始化参数
        String name = config.getInitParameter("Name");
        // 输出初始化参数
        System.out.println("Name属性: " + name);
    }

    @Override
    public void  doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("被TestFilter过滤了！");

        // 把请求传回过滤链
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {
        /* 在 Filter 实例被 Web 容器从服务移除之前调用 */
    }

}
