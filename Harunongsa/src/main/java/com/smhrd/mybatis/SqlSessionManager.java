package com.smhrd.mybatis;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	// static 블록 : 해당 클래스를 생성했을 때 무조건 실행되는 영역
	// sqlSession == Connection
	// DB 연결을 '미리' 하는 것 -> Connection Pool : CP
	// why? 시스템의 성능을 향상시키기 위해 CP를 사용,
	// 성능이 가장 떨어지는 부분이 DB 연결하는 Connection 객체를 생성ㄹ
	// 사용자 요청이 들어오면 CP에 만들어진 Connection 객체를 빌려주고 반납하는 형식으로 진행
	static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "com/smhrd/mybatis/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory =
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DAO에서 sqlsession을 사용할 수 있도록 return 해주는 메소드 생성
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;

	}
}