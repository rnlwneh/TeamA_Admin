package kr.co.kosmo.mvc.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.AdminInfoDTO;


@Repository
public class AdminInfoDaoImpl implements AdminInfoDao{
	
	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public void addAdmin(AdminInfoDTO vo) {
		ss.insert("adminInfo.addAdmin",vo);
	}

	@Override
	public List<AdminInfoDTO> adminList(AdminInfoDTO vo) {
		return ss.selectList("adminInfo.adminList", vo);
	}

	@Override
	public void deleteAdmin(String ad_no) {
		ss.delete("adminInfo.deleteAdmin", ad_no);
	}

	@Override
	public AdminInfoDTO adminLogin(AdminInfoDTO vo) {
		AdminInfoDTO result = ss.selectOne("adminInfo.adminLogin", vo);
		if(result != null) {
			ss.update("adminInfo.loginTime", result);
		}
		return result;
	}

	@Override
	public void logOut(Object vo) {
		ss.update("adminInfo.logoutTime", vo);
	}

	@Override
	public int ad_no(String ad_email) {
		return ss.selectOne("adminInfo.ad_no", ad_email);
	}
	
	
}
