package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class DiaryDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 다이어리 작성
	public int writeDiary(DiaryDTO dto) {
		
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
	
		row = session.insert("diary", dto);
		
		session.close();
		return row;
		
	// 일지 게시판 조회 기능 추가
		
	}
	
	public List<DiaryDTO> allDiary(){
		List<DiaryDTO> Diaries = null;
		SqlSession session = sqlSessionFactory.openSession(true);
		Diaries = session.selectList("allDiary");
		session.close();
		return Diaries;
	}
}
