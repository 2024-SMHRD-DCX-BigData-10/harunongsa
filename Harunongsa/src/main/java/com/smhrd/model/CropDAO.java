package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class CropDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<CropDTO> allCrop(){
		List<CropDTO> Crops = null;
		SqlSession session = sqlSessionFactory.openSession(true);
		Crops = session.selectList("allCrop");
		session.close();
		
		return Crops;
	}
	// 메인 작물 이미지 조회 기능 추가
	
}
