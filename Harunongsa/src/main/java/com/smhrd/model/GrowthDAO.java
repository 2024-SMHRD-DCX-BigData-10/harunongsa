	package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class GrowthDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 다이어리 작성
	public int writeGrowth(GrowthDTO dto) {
		
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
	
		row = session.insert("growth", dto);
		
		session.close();
		return row;
	}
	
	// 성장 게시판 조회 기능 추가
	public List<GrowthDTO> allGrowth(){
		List<GrowthDTO> Growthpost = null;
		SqlSession session = sqlSessionFactory.openSession(true);
		Growthpost = session.selectList("allGrowth");
		session.close();
		return Growthpost;
	}
}
