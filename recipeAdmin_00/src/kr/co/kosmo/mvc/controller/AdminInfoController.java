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

import kr.co.kosmo.mvc.dao.AdminInfoDao;
import kr.co.kosmo.mvc.dao.LoginLogDao;
import kr.co.kosmo.mvc.dto.AdminInfoDTO;

//동주
@Controller
public class AdminInfoController {
	
	@Autowired
	private AdminInfoDao adminInfodao;
	@Autowired
	private LoginLogDao loginLogDao;
	
	@ResponseBody
	@RequestMapping(value="/addAdmin", method=RequestMethod.POST)
	public void addAdmin(HttpServletRequest request, AdminInfoDTO vo) throws ServletException, IOException {
		//한글인코딩
		request.setCharacterEncoding("UTF-8");
		adminInfodao.addAdmin(vo);
	}
	
	@RequestMapping(value="/adminList")
	public ModelAndView adminList(AdminInfoDTO vo) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println("=====adminInfoDao adminList호출=====");
		List<AdminInfoDTO> adminList = adminInfodao.adminList(vo);
		System.out.println("=====mapper까지 찍고옴=====");
		mv.setViewName("admin/adminList");
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
	
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST)
	public ModelAndView log_loginCheck(HttpSession session, HttpServletRequest request, AdminInfoDTO vo) {
		ModelAndView mv = new ModelAndView();
		
		AdminInfoDTO adminLogin = adminInfodao.adminLogin(vo);
		if(adminLogin==null) {
			mv.setViewName("login");
			mv.addObject("msg", "이메일과 비밀번호를 다시 확인해주세요");
		}else {
			mv.setViewName("admin/indexA");
			//세션 추가
			System.out.println("=====세션추가=====");
			session.setAttribute("ad_name", adminLogin.getAd_name());
			session.setAttribute("ad_author", adminLogin.getAd_author());
			session.setAttribute("ad_no", adminLogin.getAd_no());
		}
		return mv;
	}
	
	@RequestMapping(value="/ad_logout")
	public ModelAndView log_logout(HttpSession session, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		try {
			//로그아웃 시간 저장
			Object ad_no = session.getAttribute("ad_no");
			System.out.println(ad_no);
			adminInfodao.logOut(ad_no);
		}catch(Exception e){
			//세션값 없을시 500에러 나므로
			mv.setViewName("login");
			return mv;
		}
		//세션삭제
		System.out.println("=====세션삭제=====");
		session.removeAttribute("ad_name");
		session.removeAttribute("ad_author");
		session.removeAttribute("ad_no");
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value="/adminLogDetail")
	public ModelAndView adminLogDetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		int ad_no = Integer.parseInt(request.getParameter("ad_no"));
		System.out.println(ad_no+"===========");
		mv.addObject("adLogDetail", loginLogDao.adLogDetail(ad_no));
		mv.setViewName("admin/adminLogDetail");
		return mv;
	}
}
