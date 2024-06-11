package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class GrowthDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 다이어리 작성
	public int writeGrowth(GrowthDTO dto) {
		
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
	
		row = session.insert("grow", dto);
		
		session.close();
		return row;
	}
}