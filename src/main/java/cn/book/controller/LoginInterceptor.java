package cn.book.controller;

import cn.book.pojo.Useradmin;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    //重写了HandlerInterceptor的接口，三个方法，这里只用preHandle()方法，
    //preHandle()方法，boolean布尔类型，false表示请求结束，true代表继续执行（如果是最后一个拦截器那么就会调用当前controller的方法
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取请求的地址（根域名以外的部分）
        String uri = request.getRequestURI();
        if (uri.indexOf("/home/userlogin") >= 0){
            return true;
        }
        //获取session，有就是说明已经登录，没有就是拦截访问并跳转到登录页面
        HttpSession session = request.getSession();
        Useradmin useradmin = (Useradmin) session.getAttribute("useradmin");
        if (useradmin != null){
            return true;
        }
        request.setAttribute("msg","还没登陆！快去登陆啊！");
        request.getRequestDispatcher("/WEB-INF/jsp/userlogin.jsp").forward(request,response);

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
