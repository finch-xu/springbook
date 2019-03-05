package cn.book.controller;

import cn.book.pojo.Useradmin;
import cn.book.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/home")
public class UsersLoginUseRedisController {

    @Autowired
    public UsersService usersService;
    private RedisTemplate<String,Object> redisTemplate;
    public static final String SUCCESS = "success";
    public static final String FAIL = "fail";

    @RequestMapping("/userloginRedis")
    public String userloginRedis(){
        return "userloginRedis";
    }

    @RequestMapping(value = "/loginUseRedis",method = RequestMethod.POST)
    public String loginUseRedis(Useradmin useradmin,HttpServletRequest request,HttpServletResponse response){
        useradmin = usersService.checkLogin(useradmin.getUser_name(),useradmin.getUser_password());
        if (useradmin != null){
//            model.addAttribute(useradmin);
//            request.getSession(true).setAttribute("useradmin",useradmin);
//            redisTemplate.opsForValue().set(useradmin,"user_name");
            return "redirect:/a/listBooks";
        }else {
//            model.addAttribute("message","登录名或密码错误！");
            return "userloginRedis";
        }
    }
    @RequestMapping("/set")
    public String set(){
        this.redisTemplate.opsForValue().set("6","7");
        this.redisTemplate.opsForValue().get("6");
        return SUCCESS;
    }
//    @RequestMapping(value = "/hi",method = RequestMethod.POST)
//    public String hi(){
//        redisTemplate.opsForValue().get(useradmin.getUser_name());
//        return "hi";
//    }

}
