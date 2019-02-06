package cn.book.service;

import cn.book.mapper.BooksMapper;
import cn.book.pojo.Bookadmin;
//import com.mysql.jdbc.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
//import sun.security.pkcs11.wrapper.Constants;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class BooksServiceImpl implements BooksService {

    @Autowired
    private BooksMapper booksMapper;

    //    列出数据
    @Override
    public List<Bookadmin> list(){
        List<Bookadmin> list = this.booksMapper.list();
        return list;
    }

//    //    插入数据
//    @Override
//    public int insertBook(Bookadmin bookadmin){
//        return booksMapper.insert(bookadmin);
//    }
    @Override
    public int insertBook(Bookadmin bookadmin, MultipartFile file){
        if (file != null){

            String originalFilename = file.getOriginalFilename();

//            String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));

            String picName = UUID.randomUUID() + originalFilename;

//            String picPath =  Constants.IMG_PATH + picName;

            File savePic = new File( "C:/Users/finch/IdeaProjects/springbook/src/main/webapp/WEB-INF/static/" + picName);
            try {
                file.transferTo(savePic);
                bookadmin.setPic(picName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return booksMapper.insert(bookadmin);
    }

    //    更新数据
    @Override
    public int update(Bookadmin b){
        return booksMapper.update(b);
    }

    //    删除数据
    @Override
    public int deleteBookByBid(Bookadmin bid){
        return booksMapper.delete(bid);
    }

    @Override
    public Bookadmin getBookByBid(int bid){
        return booksMapper.getBookByBid(bid);
    }
}
