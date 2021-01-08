package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.ClassListDTO;

public interface ClassListDao {
	
	public List<ClassListDTO> getClassAll();

	
	public List<ClassListDTO> getNewClass(int admin_app);
	
	public  ClassListDTO getClassDetail(String class_no);

	public void updateClass(ClassListDTO vo);

}
