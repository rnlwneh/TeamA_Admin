package kr.co.kosmo.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.LoginLogDTO;

@Repository
public class LoginLogDaoImpl implements LoginLogDao{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void addLoginLog(LoginLogDTO vo) {
		System.out.println("=====LoginLogMapper loginLog »£√‚=====");
		ss.insert("loginLog.loginLog", vo);
	}

}
