package kr.co.kosmo.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.StoreOrderDao;
import kr.co.kosmo.mvc.dto.PageVO;

@Controller
public class StoreOrderController {

	@Autowired
	StoreOrderDao storeOrderDao;
	
	@RequestMapping(value="/memberOrderList")
	public ModelAndView memberOrderList(PageVO pvo,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
			@RequestParam(required = false) String startSearchDate,
			@RequestParam(required = false) String endSearchDate,
			@RequestParam(required = false) String mem_name,
			@RequestParam(required = false) String str_pro_name) {
		ModelAndView mv = new ModelAndView();
		
		pvo.setStartSearchDate(startSearchDate);
		pvo.setEndSearchDate(endSearchDate);
		pvo.setMem_name(mem_name);
		pvo.setStr_pro_name(str_pro_name);
		int tot = storeOrderDao.strOrdTot(pvo);
		
		pvo = new PageVO(tot, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		pvo.setStartSearchDate(startSearchDate);
		pvo.setEndSearchDate(endSearchDate);
		pvo.setMem_name(mem_name);
		pvo.setStr_pro_name(str_pro_name);
		
		mv.addObject("paging", pvo);
		mv.addObject("tot", tot);
		mv.addObject("storeOrderList", storeOrderDao.storeOrderList(pvo));		
		mv.setViewName("admin/memberOrderList");
		return mv;
	}
}
