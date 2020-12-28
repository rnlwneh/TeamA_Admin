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

//����
@Controller
public class AdminInfoController {
	
	@Autowired
	private AdminInfoDao adminInfodao;
	@Autowired
	private LoginLogDao loginLogDao;
	
	@ResponseBody
	@RequestMapping(value="/addAdmin", method=RequestMethod.POST)
	public void addAdmin(HttpServletRequest request, AdminInfoDTO vo) throws ServletException, IOException {
		//�ѱ����ڵ�
		request.setCharacterEncoding("UTF-8");
		adminInfodao.addAdmin(vo);
	}
	
	@RequestMapping(value="/adminList")
	public ModelAndView adminList(AdminInfoDTO vo) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println("=====adminInfoDao adminListȣ��=====");
		List<AdminInfoDTO> adminList = adminInfodao.adminList(vo);
		System.out.println("=====mapper���� ����=====");
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
			System.out.println("=====üũ�� ������ŭ adminInfoDao deleteAdmin ȣ��=====");
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
			mv.addObject("msg", "�̸��ϰ� ��й�ȣ�� �ٽ� Ȯ�����ּ���");
		}else {
			mv.setViewName("admin/indexA");
			//���� �߰�
			System.out.println("=====�����߰�=====");
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
			//�α׾ƿ� �ð� ����
			Object ad_no = session.getAttribute("ad_no");
			System.out.println(ad_no);
			adminInfodao.logOut(ad_no);
		}catch(Exception e){
			//���ǰ� ������ 500���� ���Ƿ�
			mv.setViewName("login");
			return mv;
		}
		//���ǻ���
		System.out.println("=====���ǻ���=====");
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
