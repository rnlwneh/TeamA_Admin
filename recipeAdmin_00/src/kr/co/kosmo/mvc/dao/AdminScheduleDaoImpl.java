package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.AdminScheduleDTO;


@Repository
public class AdminScheduleDaoImpl implements AdminScheduleDao{

	@Autowired
	SqlSessionTemplate ss;

	@Override
	public void addSchedule(AdminScheduleDTO vo) {
		ss.insert("adSchedule.addSchedule", vo);
	}

	@Override
	public List<AdminScheduleDTO> scheduleList(Object ad_no) {
		return ss.selectList("adSchedule.scheduleList", ad_no);
	}

	@Override
	public void deleteSchedule(String ad_sche_no) {
		ss.delete("adSchedule.deleteSchedule", ad_sche_no);
	}

	@Override
	public void updateSchedule(AdminScheduleDTO vo) {
		ss.update("adSchedule.updateSchedule", vo);
	}
}
