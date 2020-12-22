package kr.co.kosmo.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.TradeListDao;
import kr.co.kosmo.mvc.dto.TradeListDTO;

//����
@Controller
public class TradeListController {
	
	@Autowired
	TradeListDao tradeListdao;
	
	@RequestMapping("/clientList")
	public ModelAndView clientList() {
		ModelAndView mv = new ModelAndView();
		System.out.println("=====TradeListDao getTradeList() ȣ��");
		List<TradeListDTO> trdList = tradeListdao.getTradeList();
		mv.addObject("trdList", trdList);
		mv.setViewName("admin/clientList");
		return mv;
	}
}
