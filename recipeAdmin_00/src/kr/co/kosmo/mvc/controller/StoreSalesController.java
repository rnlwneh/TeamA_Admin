package kr.co.kosmo.mvc.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.StoreSalesDao;

@Controller
public class StoreSalesController {
	
	@Autowired
	StoreSalesDao storesalesdao;
	
	@RequestMapping(value="/sales")
	public ModelAndView sales() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("admin/sales");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/searchDate")
	public List<HashMap<String,String>> searchDate(HttpServletRequest request) {
		String date = request.getParameter("searchDate").toString().trim();
		List<HashMap<String,String>> searchDateList = storesalesdao.storeSales(date);
		return searchDateList;
	}
}
