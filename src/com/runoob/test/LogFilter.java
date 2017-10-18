package com.runoob.test;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by Gu Xin on 2017/10/18.
 */
public class LogFilter implements javax.servlet.Filter {

    public void init(FilterConfig config) throws ServletException {
        // 获取初始化参数
        String site = config.getInitParameter("Site");
        // 输出初始化参数
        System.out.println("网站名称: " + site);
    }

    @Override
    public void  doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws java.io.IOException, ServletException {
        // 输出请求的URL
        HttpServletRequest req = (HttpServletRequest) request;
        String url = req.getRequestURI();
        System.out.println("请求的URL：" + url);

        // 把请求传回过滤链
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {
        /* 在 Filter 实例被 Web 容器从服务移除之前调用 */
    }

}
