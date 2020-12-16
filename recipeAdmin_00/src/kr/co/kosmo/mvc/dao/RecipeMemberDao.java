package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.RecipeMemberDTO;

//¾îÁø
public interface RecipeMemberDao {
	
	public RecipeMemberDTO getBoard(RecipeMemberDTO vo) ;

	public List<RecipeMemberDTO> getBoardList(RecipeMemberDTO vo) ;
	
	public List<RecipeMemberDTO> getMemberList() ;
}
