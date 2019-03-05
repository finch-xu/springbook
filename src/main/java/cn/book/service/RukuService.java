package cn.book.service;

import cn.book.pojo.Ruku;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public interface RukuService {
//    int insertRuku(Ruku ruku, MultipartFile file);
    int insertRuku(Ruku ruku);
}
