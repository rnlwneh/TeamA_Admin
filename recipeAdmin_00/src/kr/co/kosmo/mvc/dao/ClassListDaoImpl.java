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
	public List<ClassListDTO> getClassList() {
		return ss.selectList("classList.classList");
	}

}
