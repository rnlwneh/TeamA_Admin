package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.ClassListDTO;


@Repository
public class ClassListDaoImpl implements ClassListDao {
	
	@Autowired
	private SqlSessionTemplate ss;

	
	
	@Override
	public List<ClassListDTO> getClassAll() {
		return ss.selectList("classList.classAll");
	}

	@Override
	public List<ClassListDTO> getNewClass(int admin_app) {
		return ss.selectList("classList.newClass",admin_app);
	
	}

	@Override
	public ClassListDTO getClassDetail(String class_no) {
		return ss.selectOne("classList.classDetail",class_no);
		
	}


	@Override
	public void updateClass(ClassListDTO vo) {
		ss.update("classList.classUpdate",vo);
		
	}








}
