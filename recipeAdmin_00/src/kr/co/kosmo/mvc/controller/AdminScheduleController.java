package kr.co.kosmo.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.AdminScheduleDao;
import kr.co.kosmo.mvc.dto.AdminScheduleDTO;

//����
@Controller
public class AdminScheduleController {
	
	@Autowired
	private AdminScheduleDao adminScheduleDao;
	
	@RequestMapping(value="/adminSchedule2")
	public ModelAndView adminSchedule2() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("adminSchedule2");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/addSchedule", method=RequestMethod.POST)
	public void addSchedule(HttpServletRequest request, AdminScheduleDTO vo) throws ServletException,IOException {
		//�ѱ����ڵ�
		request.setCharacterEncoding("UTF-8");
		System.out.println("=====AdminScheduleDao addSchedule ȣ��=====");
		adminScheduleDao.addSchedule(vo);
	}
	
	@ResponseBody
	@RequestMapping(value="/scheduleList")
	public List<AdminScheduleDTO> scheduleList(HttpSession session) {
		Object ad_no = session.getAttribute("ad_no");
		System.out.println("=====AdminScheduleDao scheduleList ȣ��=====");
		List<AdminScheduleDTO> scheduleList = adminScheduleDao.scheduleList(ad_no);
		System.out.println("===mapper���� �̻����===");
		return scheduleList;
	}
}
