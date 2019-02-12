package cn.book.mapper;

import cn.book.pojo.Useradmin;
import org.apache.ibatis.annotations.Param;

//持久层映射接口
public interface UsersMapper {

    //    注解Param自动把这俩参数封装成map集合，括号内的就是键
//    Useradmin userLogin(@Param("user_name") String user_name, @Param("user_password") String user_password);
    Useradmin findUserByName(String user_name);
}
