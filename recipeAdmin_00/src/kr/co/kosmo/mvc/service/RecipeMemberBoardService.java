package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.dto.RecipeMemberDTO;

//����
public interface RecipeMemberBoardService {
	
	
	RecipeMemberDTO getBoard(RecipeMemberDTO vo);

	// �� ��� ��ȸ
	List<RecipeMemberDTO> getBoardList(RecipeMemberDTO vo);
	
	public List<RecipeMemberDTO> getMemberList();
	
}
