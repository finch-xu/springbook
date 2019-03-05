package cn.book.controller;

import cn.book.pojo.Ruku;
import cn.book.service.RukuService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/a")
public class RukuController {

    @Autowired
    RukuService rukuService;

    @RequestMapping("/rukuPaper")
    public String rukuPaper(){
        return "rukuPaper";
    }

    @RequestMapping(value = "/ruku",method = RequestMethod.POST)
    @ResponseBody
    public String ruku(@RequestBody Ruku ruku){
//        for (Ruku ruku:rukus){
        rukuService.insertRuku(ruku);
//        }
        return "redirect:rukuHistory";
    }

    @RequestMapping("rukuHistory")
    public String rukuHistory(){
        return "rukuHistory";
    }
}
