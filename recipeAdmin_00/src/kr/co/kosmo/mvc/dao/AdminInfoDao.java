package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.AdminInfoDTO;

//µø¡÷
public interface AdminInfoDao{
	public void addAdmin(AdminInfoDTO vo);
	public List<AdminInfoDTO> adminList(AdminInfoDTO vo);
	public void deleteAdmin(String vo);
	public AdminInfoDTO adminLogin(AdminInfoDTO vo);
	public void logOut(Object vo);
}
