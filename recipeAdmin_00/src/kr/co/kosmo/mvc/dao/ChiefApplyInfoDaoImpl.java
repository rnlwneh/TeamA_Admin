package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.ChiefApplyDTO;


@Repository
public class ChiefApplyInfoDaoImpl implements ChiefApplyInfoDao {

	
	
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<ChiefApplyDTO> getApplyList() {
		return ss.selectList("chiefApply.newChief");
		
	}

	@Override
	public void memberUpgrade(String mem_no) {
		ss.selectOne("chiefApply.updateGrade",mem_no);
		
	}

	@Override
	public void delete(String mem_no) {
		ss.selectOne("chiefApply.delete",mem_no);
		
	}



}
