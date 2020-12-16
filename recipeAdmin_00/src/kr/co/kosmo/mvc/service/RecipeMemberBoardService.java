package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.dto.RecipeMemberDTO;

//어진
public interface RecipeMemberBoardService {
	
	
	RecipeMemberDTO getBoard(RecipeMemberDTO vo);

	// 글 목록 조회
	List<RecipeMemberDTO> getBoardList(RecipeMemberDTO vo);
	
	public List<RecipeMemberDTO> getMemberList();
	
}
