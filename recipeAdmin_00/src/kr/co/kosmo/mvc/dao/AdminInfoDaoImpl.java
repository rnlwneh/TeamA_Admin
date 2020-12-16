package kr.co.kosmo.mvc.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.AdminInfoDTO;

//동주
@Repository
public class AdminInfoDaoImpl implements AdminInfoDao{
	
	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public void addAdmin(AdminInfoDTO vo) {
		System.out.println("=====AdminInfoMapper addAdmin호출=====");
		ss.insert("adminInfo.addAdmin",vo);
	}

	@Override
	public List<AdminInfoDTO> adminList(AdminInfoDTO vo) {
		System.out.println("=====AdminInfoMapper adminList호출=====");
		return ss.selectList("adminInfo.adminList", vo);
	}

	@Override
	public void deleteAdmin(String ad_no) {
		System.out.println("=====AdminInfoMapper deleteAdmin 호출=====");
		ss.delete("adminInfo.deleteAdmin", ad_no);
	}

	@Override
	public AdminInfoDTO adminLogin(AdminInfoDTO vo) {
		System.out.println("=====AdminInfoMapper adminLogin 호출=====");
		AdminInfoDTO result = ss.selectOne("adminInfo.adminLogin", vo);
		if(result != null) {
			System.out.println("=== 로그인 시간 저장 ===");
			ss.update("adminInfo.loginTime", result);
		}
		return result;
	}

	@Override
	public void logOut(Object vo) {
		System.out.println("=== 로그아웃 시간 저장 ===");
		ss.update("adminInfo.logoutTime", vo);
	}
	
	
}
