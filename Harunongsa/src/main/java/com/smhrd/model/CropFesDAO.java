package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class CropFesDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
		public List<CropFesDTO> allCropFes() {
			List<CropFesDTO> CropFes = null;
			SqlSession session = sqlSessionFactory.openSession(true);
			CropFes = session.selectList("allCrop");
			session.close();
			
			return CropFes;
		}
}