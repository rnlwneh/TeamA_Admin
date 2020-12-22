package kr.co.kosmo.mvc.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.StoreProductDao;
import kr.co.kosmo.mvc.dto.StoreProductDTO;
import kr.co.kosmo.mvc.dto.TradeListDTO;

//동주
@Controller
public class StoreProductController {
	
	@Autowired
	StoreProductDao storeProductDao;
	
	@RequestMapping(value="/addStoreGoods")
	public ModelAndView addStoreGoods(){
		ModelAndView mv = new ModelAndView();
		
		System.out.println("=====StoreProductDao trdListName() 호출=====");
		List<TradeListDTO> trdListName = storeProductDao.trdListName();
		mv.addObject("trdListName", trdListName);
		mv.setViewName("admin/addStoreGoods");
		return mv;
	}
	
	@RequestMapping(value="/saveStoreGoods")
	public ModelAndView saveStoreGoods(StoreProductDTO vo) throws IOException {
		ModelAndView mv = new ModelAndView();
		
//		System.out.println(vo.getStr_pro_content());
//		System.out.println(vo.getStr_pro_detail_image());
//		System.out.println(vo.getStr_pro_image());
//		System.out.println(vo.getStr_pro_name());
//		System.out.println(vo.getStr_pro_no());
//		System.out.println(vo.getStr_pro_primecost());
//		System.out.println(vo.getStr_pro_remind());
//		System.out.println(vo.getStr_pro_salescost());
//		System.out.println(vo.getStr_pro_show());
//		System.out.println(vo.getTrd_list_no());
		System.out.println("=====StoreProductDao addStoreGoods() 호출=====");
		storeProductDao.addStoreGoods(vo);
		mv.setViewName("redirect:admin/storeGoodsList");
		return mv;
	}
}
