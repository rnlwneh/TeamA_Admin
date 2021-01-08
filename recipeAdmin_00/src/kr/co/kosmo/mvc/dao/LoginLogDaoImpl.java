package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

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
		ss.insert("loginLog.loginLog", vo);
	}

	@Override
	public List<LoginLogDTO> adLogDetail(HashMap<String,Integer> logCntMap) {
		return ss.selectList("loginLog.adLogDetail", logCntMap);
	}

	@Override
	public int logCnt(int ad_no) {
		return ss.selectOne("loginLog.logCnt", ad_no);
	}

}
