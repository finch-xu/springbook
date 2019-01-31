package cn.book.service;

import cn.book.pojo.Bookadmin;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BooksService {
    public List<Bookadmin> list();

    int insertBook(Bookadmin bookadmin);
}
