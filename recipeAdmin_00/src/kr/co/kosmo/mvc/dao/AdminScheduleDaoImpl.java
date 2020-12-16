package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.AdminScheduleDTO;

//동주
@Repository
public class AdminScheduleDaoImpl implements AdminScheduleDao{

	@Autowired
	SqlSessionTemplate ss;

	@Override
	public void addSchedule(AdminScheduleDTO vo) {
		System.out.println("=====AdminScheduleMapper addSchedule호출=====");
		ss.insert("adSchedule.addSchedule", vo);
	}

	@Override
	public List<AdminScheduleDTO> scheduleList(Object ad_no) {
		System.out.println("=====AdminScheduleMapper scheduleList 호출=====");
		return ss.selectList("adSchedule.scheduleList", ad_no);
	}

	@Override
	public void deleteSchedule(String ad_sche_no) {
		System.out.println("=====AdminScheduleMapper deleteSchedule 호출=====");
		ss.delete("adSchedule.deleteSchedule", ad_sche_no);
	}

	@Override
	public void updateSchedule(AdminScheduleDTO vo) {
		System.out.println("=====AdminScheduleMapper updateSchedule 호출=====");
		ss.update("adSchedule.updateSchedule", vo);
	}
}
