package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class GardenDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 인증 게시물 작성
	public int writeGarden(GardenDTO dto) {
		
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
	
		row = session.insert("garden", dto);
		
		session.close();
		return row;
	}
	
	// 인증 게시판 조회 기능 추가
    
	public List<GardenDTO> allGarden(){
		List<GardenDTO> Certigarden = null;
		SqlSession session = sqlSessionFactory.openSession(true);
		Certigarden = session.selectList("allGarden");
		session.close();
		return Certigarden;
	}
}
