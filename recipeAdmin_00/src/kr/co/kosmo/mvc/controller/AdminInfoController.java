package kr.co.kosmo.mvc.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.AdminInfoDao;
import kr.co.kosmo.mvc.dto.AdminInfoDTO;

@Controller
public class AdminInfoController {
	
	@Autowired
	private AdminInfoDao adminInfodao;
	
	@ResponseBody
	@RequestMapping(value="/addAdmin", method=RequestMethod.POST)
	public void addAdmin(HttpServletRequest request, AdminInfoDTO vo) throws ServletException, IOException {
		//한글인코딩
		request.setCharacterEncoding("UTF-8");
		adminInfodao.addAdmin(vo);
	}
	
	@RequestMapping(value="/adminList")
	public ModelAndView adminList(AdminInfoDTO vo,Model m) {
		ModelAndView mv = new ModelAndView();
		System.out.println("=====adminInfoDao adminList호출=====");
		List<AdminInfoDTO> adminList = adminInfodao.adminList(vo);
		System.out.println("=====mapper까지 찍고옴=====");
		mv.setViewName("adminList");
		mv.addObject("adminList", adminList);
		return mv;
	}
	
	@RequestMapping(value="/deleteAdmin")
	public ModelAndView deleteAdmin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String no = request.getParameter("adminNo");
		String[] adminNo = no.split(",");
		for(String ad_no : adminNo) {
			System.out.println("=====체크된 갯수만큼 adminInfoDao deleteAdmin 호출=====");
			System.out.println(ad_no);
			adminInfodao.deleteAdmin(ad_no);
		}
		mv.setViewName("redirect:adminList");
		return mv;
	}
}
