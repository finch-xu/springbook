package cn.book.service;

import cn.book.pojo.Bookadmin;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public interface BooksService {

    List<Bookadmin> list();

    int insertBook(Bookadmin bookadmin, MultipartFile file);

    int update(Bookadmin b, MultipartFile file);

    int deleteBookByBid(Bookadmin bid);

    Bookadmin getBookByBid(int bid);

    int count();
}
