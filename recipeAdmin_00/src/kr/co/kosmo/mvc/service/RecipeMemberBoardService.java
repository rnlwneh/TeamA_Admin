package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.RecipeMemberDTO;



public interface RecipeMemberBoardService {
	
	
	RecipeMemberDTO getBoard(RecipeMemberDTO vo);

	// 글 목록 조회
	List<RecipeMemberDTO> getBoardList(RecipeMemberDTO vo);
	
	
	public List<RecipeMemberDTO> getMemberList(PageVO svo) ;
	
	
	public RecipeMemberDTO getMemberDetail(int mem_no) ;

	
	public void update(RecipeMemberDTO vo);

	
	public int getTotalCount(); 
}
