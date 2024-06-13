package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class CropFesDAO {
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

    // 모든 축제 데이터를 조회하는 메서드	
    public List<CropFesDTO> allCropFes() { // allCropFes 메서드 추가
        List<CropFesDTO> CropFes = null;
        SqlSession session = sqlSessionFactory.openSession(true);
        CropFes = session.selectList("allCropFes"); // allCropFes 쿼리 사용
        session.close();
        return CropFes;
    }
    
    // 특정 프로그램명을 기반으로 축제 데이터를 조회하는 메서드
    public CropFesDTO getCropFesByProgramName(String programName) {
        CropFesDTO cropFes = null;
        SqlSession session = sqlSessionFactory.openSession(true);
        cropFes = session.selectOne("getCropFesByProgramName", programName);
        session.close();
        return cropFes;
    }
}
