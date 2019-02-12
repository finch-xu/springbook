package cn.book.service;

import cn.book.mapper.UsersMapper;
import cn.book.pojo.Useradmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UsersServiceImpl implements UsersService{
    @Autowired
    private UsersMapper usersMapper;
//    @Override
//    public Useradmin userLogin(String user_name,String user_password){
//        return usersMapper.userLogin(user_name,user_password);
//    }

    @Override
    public Useradmin checkLogin(String user_name,String user_password){
        Useradmin useradmin = usersMapper.findUserByName(user_name);
        if (useradmin != null && useradmin.getUser_password().equals(user_password)){
            return useradmin;
        }
        return null;
    }

}
