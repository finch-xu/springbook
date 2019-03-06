package cn.book.service;

import cn.book.pojo.Ruku;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public interface RukuService {

    int insertRuku(Ruku ruku);

    int updateRuku(Ruku r);

    List<Ruku> listRuku();

    int deleteRukuByRukuid(Ruku rukuid);

    Ruku getRukuByRukuid(int rukuid);

}
