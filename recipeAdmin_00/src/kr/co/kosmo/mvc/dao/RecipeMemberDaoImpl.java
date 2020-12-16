package kr.co.kosmo.mvc.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.RecipeMemberDTO;


//����
@Repository("recipeMemberDao")
public class RecipeMemberDaoImpl implements RecipeMemberDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public RecipeMemberDTO getBoard(RecipeMemberDTO vo) {
		System.out.println("===> Mybatis RecipeMemberDTO() ȣ��");
		return ss.selectOne("RecipeMemberDao.getBoard",vo);
	}

	@Override
	public List<RecipeMemberDTO> getBoardList(RecipeMemberDTO vo) {
		System.out.println("===> Mybatis List<RecipeMemberDTO>() ȣ��");
		return ss.selectList("RecipeMemberDao.getBoardList",vo);
	}

	@Override
	public List<RecipeMemberDTO> getMemberList() {
		// TODO Auto-generated method stub
		return ss.selectList("recipeMember.memlist");
	}



}
