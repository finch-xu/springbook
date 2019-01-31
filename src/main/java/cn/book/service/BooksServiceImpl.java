package cn.book.service;

import cn.book.mapper.BooksMapper;
import cn.book.pojo.Bookadmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BooksServiceImpl implements BooksService {

    @Autowired
    private BooksMapper booksMapper;

//    列出数据
    @Override
    public List<Bookadmin> list(){
        List<Bookadmin> list = this.booksMapper.list();
        return list;
    }

//    插入数据
    @Override
    public int insertBook(Bookadmin bookadmin){
        return booksMapper.insert(bookadmin);
    }


}
