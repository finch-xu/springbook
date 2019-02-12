package cn.book.controller;

import cn.book.pojo.Useradmin;
import cn.book.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/home")
public class UsersController {
    @Autowired
    private UsersService usersService;

    //进入login页面
    @RequestMapping("/userlogin")
    public String userlogin(){
        return "userlogin";
    }
    //执行login操作，匹配用户名和密码，建立session持久连接
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Useradmin useradmin, Model model, HttpServletRequest request){
        useradmin = usersService.checkLogin(useradmin.getUser_name(),useradmin.getUser_password());
        if (useradmin != null){
            model.addAttribute(useradmin);
            request.getSession(true).setAttribute("useradmin",useradmin);
            return "redirect:/a/listBooks";
        }else {
            model.addAttribute("message","登录名或密码错误！");
            return "userlogin";
        }
    }
    //logout登出，其实就是删除之前登录时设置的session
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("useradmin");
        return "redirect:userlogin";
    }
}
