package kr.co.kosmo.mvc.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.AdminInfoDTO;

//����
@Repository
public class AdminInfoDaoImpl implements AdminInfoDao{
	
	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public void addAdmin(AdminInfoDTO vo) {
		System.out.println("=====AdminInfoMapper addAdminȣ��=====");
		ss.insert("adminInfo.addAdmin",vo);
	}

	@Override
	public List<AdminInfoDTO> adminList(AdminInfoDTO vo) {
		System.out.println("=====AdminInfoMapper adminListȣ��=====");
		return ss.selectList("adminInfo.adminList", vo);
	}

	@Override
	public void deleteAdmin(String ad_no) {
		System.out.println("=====AdminInfoMapper deleteAdmin ȣ��=====");
		ss.delete("adminInfo.deleteAdmin", ad_no);
	}

	@Override
	public AdminInfoDTO adminLogin(AdminInfoDTO vo) {
		System.out.println("=====AdminInfoMapper adminLogin ȣ��=====");
		AdminInfoDTO result = ss.selectOne("adminInfo.adminLogin", vo);
		if(result != null) {
			System.out.println("=== �α��� �ð� ���� ===");
			ss.update("adminInfo.loginTime", result);
		}
		return result;
	}

	@Override
	public void logOut(Object vo) {
		System.out.println("=== �α׾ƿ� �ð� ���� ===");
		ss.update("adminInfo.logoutTime", vo);
	}
	
	
}
