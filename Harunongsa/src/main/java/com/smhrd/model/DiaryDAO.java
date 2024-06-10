package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class DiaryDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 게시글 작성
	public int writeDiary(DiaryDTO dto) {
		
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
	
		row = session.insert("diary", dto);
		
		session.close();
		return row;
	}
}
