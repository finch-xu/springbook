package cn.book.mapper;

import cn.book.pojo.Ruku;

import java.util.List;

public interface RukuMapper {

    int insertRuku(Ruku record);

    List<Ruku> listRuku() ;

    int updateRuku(Ruku r);

    int deleteRuku(Ruku rukuid);

    Ruku getRukuByRukuid(Integer rukuid);
}
