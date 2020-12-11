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
		return ss.selectOne("adminInfo.adminLogin", vo);
	}
	
	
}
