package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.RecipeMemberDaoImpl;
import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.RecipeMemberDTO;

@Service("recipeMemberBoardService")
public class RecipeMemberBoardServiceImpl implements RecipeMemberBoardService {

	@Autowired
	private RecipeMemberDaoImpl recipeMemberDao;
	
	@Override
	public RecipeMemberDTO getBoard(RecipeMemberDTO vo) {
		return recipeMemberDao.getBoard(vo);
	}

	@Override
	public List<RecipeMemberDTO> getBoardList(RecipeMemberDTO vo) {
		return recipeMemberDao.getBoardList(vo);
	}

	@Override
	public List<RecipeMemberDTO> getMemberList(PageVO svo){
		return recipeMemberDao.getMemberList(svo);
	}
	
	@Override
	public RecipeMemberDTO getMemberDetail(int mem_no) {

	return recipeMemberDao.getMemberDetail(mem_no);

	}
	
	@Override
	public void update(RecipeMemberDTO vo) {
		recipeMemberDao.update(vo);
	}

	@Override
	public int getTotalCount() {
	 return	recipeMemberDao.getTotalCount();
		
	}
	
	

}
