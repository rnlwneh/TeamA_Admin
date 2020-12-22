package kr.co.kosmo.mvc.dao;


import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.RecipeMemberDTO;


public interface RecipeMemberDao {
	
	public RecipeMemberDTO getBoard(RecipeMemberDTO vo) ;

	public List<RecipeMemberDTO> getBoardList(RecipeMemberDTO vo) ;
	
	public List<RecipeMemberDTO> getMemberList(PageVO svo) ;
	
	public RecipeMemberDTO getMemberDetail(int mem_no);

	public void update(RecipeMemberDTO vo);
	
	public int getTotalCount(); 
}
