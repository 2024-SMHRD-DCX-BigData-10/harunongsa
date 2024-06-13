package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class MemDAO {
    
    // SqlSessionManager에 있는 sqlSessionFactory 불러오기
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
    
    // 회원가입 메소드
    public int join(MemDTO dto) {
        SqlSession session = sqlSessionFactory.openSession(true);
        int row = session.insert("join", dto);
        session.close();
        return row;
    }

    // 로그인 메소드
    public String login(MemDTO dto) {
        SqlSession session = sqlSessionFactory.openSession(true);
        String name = session.selectOne("login", dto);
        session.close();
        return name;
    }
    
    // 회원 삭제 메소드
    public int delete(MemDTO dto) {
        SqlSession session = sqlSessionFactory.openSession(true);
        int row = session.delete("delete", dto);
        session.close();
        return row;
    }
    
    // 비밀번호 변경 메소드
    public int updatePassword(String memberID, String oldPassword, String newPassword) {
        SqlSession session = sqlSessionFactory.openSession(true);
        MemDTO param = new MemDTO();
        param.setMemberID(memberID);
        param.setPassword(oldPassword);
        param.setNewPassword(newPassword);
        int row = session.update("updatePassword", param);
        session.close();
        return row;
    }

    // 이메일로 사용자 정보 가져오기 메소드
    public MemDTO getUserByEmail(String email) {
        SqlSession session = sqlSessionFactory.openSession(true);
        MemDTO user = session.selectOne("kakaologin", email);
        session.close();
        return user;
    }
}
