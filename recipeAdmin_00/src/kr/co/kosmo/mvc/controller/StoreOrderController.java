package kr.co.kosmo.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.StoreOrderDao;
import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.StoreOrderDTO;

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
//		System.out.println(pvo.getStartSearchDate());
//		System.out.println(pvo.getEndSearchDate());
//		System.out.println(pvo.getMem_name());
//		System.out.println(pvo.getStr_pro_name());
		int tot = storeOrderDao.strOrdTot(pvo);
//		System.out.println("ÃÑ °¹¼ö : "+tot);
		
		pvo = new PageVO(tot, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		pvo.setStartSearchDate(startSearchDate);
		pvo.setEndSearchDate(endSearchDate);
		pvo.setMem_name(mem_name);
		pvo.setStr_pro_name(str_pro_name);
		
		mv.addObject("paging", pvo);
		mv.addObject("tot", tot);
		System.out.println("=====StoreOrderDao storeOrderList() È£Ãâ=====");
//		List<StoreOrderDTO> list = storeOrderDao.storeOrderList(pvo);
//		System.out.println("//////////////list : "+list);
		mv.addObject("storeOrderList", storeOrderDao.storeOrderList(pvo));		
		mv.setViewName("admin/memberOrderList");
		return mv;
	}
}
