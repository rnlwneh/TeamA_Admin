package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.ChiefApplyDTO;


public interface ChiefApplyInfoDao {
	
	
	public List<ChiefApplyDTO> getApplyList();
	
	public void memberUpgrade(String mem_no);
	
	
	public void delete(String mem_no);

	
	
}
