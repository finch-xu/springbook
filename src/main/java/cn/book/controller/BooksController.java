package cn.book.controller;

import cn.book.pojo.Bookadmin;
import cn.book.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping("/a")
public class BooksController {

    @Autowired
    BooksService booksService;

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/listBooks")
    public ModelAndView listBooks(){
        ModelAndView mav = new ModelAndView();
        List<Bookadmin> bb = booksService.list();
        mav.addObject("bb",bb);
        mav.setViewName("listBooks");
        return mav;
    }

//    把下边的页面数据返回给后端，再跳转到listBooks页面
    @RequestMapping(value = "/addBooks",method = RequestMethod.POST)
    public String addBooks(Bookadmin bookadmin){
        booksService.insertBook(bookadmin);
        return "redirect:listBooks";
    }
//    跳转到这里并添加图书信息，点击添加按钮就执行上边的代码
    @RequestMapping("/addBooks0")
    public String addBooks0(){
        return "savepage";
    }




}
