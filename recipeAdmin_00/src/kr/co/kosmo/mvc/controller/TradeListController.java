package kr.co.kosmo.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.TradeListDao;
import kr.co.kosmo.mvc.dto.TradeListDTO;


@Controller
public class TradeListController {
	
	@Autowired
	TradeListDao tradeListdao;
	
	@RequestMapping("/clientList")
	public ModelAndView clientList() {
		ModelAndView mv = new ModelAndView();
		List<TradeListDTO> trdList = tradeListdao.getTradeList();
		mv.addObject("trdList", trdList);
		mv.setViewName("admin/clientList");
		return mv;
	}
	
	@RequestMapping(value="/clientDetail")
	public ModelAndView clientDetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		int trd_list_no = Integer.parseInt(request.getParameter("trd_list_no"));
		mv.addObject("trdDetail", tradeListdao.trdDetail(trd_list_no));
		mv.addObject("trdDetailInfo",tradeListdao.trdDetailInfo(trd_list_no));
		mv.addObject("trdTotSell", tradeListdao.trdTotSell());
		mv.setViewName("admin/clientDetail");
		return mv;
	}
	
	@RequestMapping(value="/addClientList")
	public ModelAndView addClient(TradeListDTO vo) {
		ModelAndView mv = new ModelAndView();
		
		tradeListdao.addTrdList(vo);
		mv.setViewName("redirect:clientList");
		return mv;
	}
}
