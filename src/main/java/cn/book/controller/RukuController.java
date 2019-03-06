package cn.book.controller;

import cn.book.pojo.Bookadmin;
import cn.book.pojo.Ruku;
import cn.book.service.BooksService;
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
    @Autowired
    BooksService booksService;

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

    @RequestMapping("/rukuHistory")
    public String rukuHistory(Model model){
        List<Ruku> listruku = rukuService.listRuku();
        model.addAttribute("listruku",listruku);
        return "rukuHistory";
    }

    //进入入库页面
    @RequestMapping("/rukuDetail/{rukuid}")
    public String rukuDetil(@PathVariable("rukuid") int rukuid,Model model){
        model.addAttribute("rukuDetail",rukuService.getRukuByRukuid(rukuid));
        return "rukuDetail";
    }
    //获取ruku单的信息，然后完善修改，添加图片，再返回给bookadmin
    @RequestMapping(value = "/doRuku",method = RequestMethod.POST)
    public String doRuku(Bookadmin bookadmin, MultipartFile file,Model model) {
        booksService.insertBook(bookadmin, file);
        model.addAttribute("bookadmin",bookadmin);
        return ("redirect:listBooks");
    }



}
