package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.LoginLogDTO;

public interface LoginLogDao {
	public void addLoginLog(LoginLogDTO vo);
	public List<LoginLogDTO> adLogDetail(int ad_no);
}
