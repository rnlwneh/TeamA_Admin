package kr.co.kosmo.mvc.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.RecipeMemberDTO;



@Repository("recipeMemberDao")
public class RecipeMemberDaoImpl implements RecipeMemberDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public RecipeMemberDTO getBoard(RecipeMemberDTO vo) {
		return ss.selectOne("RecipeMemberDao.getBoard",vo);
	}

	@Override
	public List<RecipeMemberDTO> getBoardList(RecipeMemberDTO vo) {
		return ss.selectList("RecipeMemberDao.getBoardList",vo);
	}

	@Override
	public List<RecipeMemberDTO> getMemberList(PageVO svo) {
		return ss.selectList("recipeMember.memlist",svo);
	}
	
	@Override
	public RecipeMemberDTO getMemberDetail(int mem_no) {
		return ss.selectOne("recipeMember.viewDetail",mem_no);
	}
	@Override
	public void update(RecipeMemberDTO vo) {
	 	ss.update("recipeMember.memlistup", vo);
	}

	@Override
	public int getTotalCount() {
		return ss.selectOne("recipeMember.totalCount");
	}

}
