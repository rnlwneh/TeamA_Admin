package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.AdminScheduleDTO;

//µø¡÷
public interface AdminScheduleDao {
	
	public void addSchedule(AdminScheduleDTO vo);
	public List<AdminScheduleDTO> scheduleList(Object ad_no);
}
