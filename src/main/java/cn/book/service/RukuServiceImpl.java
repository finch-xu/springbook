package cn.book.service;

import cn.book.mapper.RukuMapper;
import cn.book.pojo.Ruku;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class RukuServiceImpl implements RukuService{

    @Autowired
    RukuMapper rukuMapper;

    @Override
    public int insertRuku(Ruku ruku){
        return rukuMapper.insertRuku(ruku);
    }
    @Override
    public int updateRuku(Ruku r){
        return rukuMapper.updateRuku(r);
    }
    @Override
    public List<Ruku> listRuku(){
        List<Ruku> rukuList = rukuMapper.listRuku();
        return rukuList;
    }
    @Override
    public int deleteRukuByRukuid(Ruku rukuid) {
        return rukuMapper.deleteRuku(rukuid);
    }
    @Override
    public Ruku getRukuByRukuid(int rukuid){
        return rukuMapper.getRukuByRukuid(rukuid);
    }

//    @Override
//    public int insertRuku(Ruku ruku, MultipartFile file){
//        if (file != null){
//            String originalFilename = file.getOriginalFilename();
//            String picName = UUID.randomUUID() + toString() + originalFilename;
//            File savePic = new File( "C:/Users/finch/IdeaProjects/springbook/src/main/webapp/WEB-INF/static/img/" + picName);
//            try {
//                file.transferTo(savePic);
//                ruku.setRuku_pic(picName);
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//        return rukuMapper.insertRuku(ruku);
//    }
}
