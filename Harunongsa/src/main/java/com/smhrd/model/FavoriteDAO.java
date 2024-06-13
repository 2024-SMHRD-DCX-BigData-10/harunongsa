package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class FavoriteDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int favoriteCrop(FavoriteDTO dto) {
		
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
		
		row = session.insert("favorite", dto);
		
		session.close();
		return row;
	}
	
}
