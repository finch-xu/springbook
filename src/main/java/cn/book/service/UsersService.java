package cn.book.service;

import cn.book.pojo.Useradmin;
import org.springframework.stereotype.Service;

@Service
public interface UsersService {
//    Useradmin userLogin(String user_name,String user_password);
    Useradmin checkLogin(String user_name,String user_password);
}
