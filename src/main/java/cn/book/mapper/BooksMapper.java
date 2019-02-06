package cn.book.mapper;

import cn.book.pojo.Bookadmin;

import java.util.List;

public interface BooksMapper{

    List<Bookadmin> list();

    int insert(Bookadmin record);

    int update(Bookadmin b);

    int delete(Bookadmin bid);

    Bookadmin getBookByBid(Integer bid);

}
