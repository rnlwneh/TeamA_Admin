package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.kosmo.mvc.dto.LoginLogDTO;

public interface LoginLogDao {
	public void addLoginLog(LoginLogDTO vo);
	public List<LoginLogDTO> adLogDetail(HashMap<String,Integer> logCntMap);
	public int logCnt(int ad_no);
}
