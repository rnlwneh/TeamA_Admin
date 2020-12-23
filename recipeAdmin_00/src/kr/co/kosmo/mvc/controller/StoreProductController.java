package kr.co.kosmo.mvc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.StoreProductDao;
import kr.co.kosmo.mvc.dto.PageVO;
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
		mv.setViewName("redirect:storeGoodsList");
		return mv;
	}
	
	@RequestMapping(value="/storeGoodsList")
	public ModelAndView storeGoodsList(PageVO pvo,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
			@RequestParam(required = false) String searchProName,
			@RequestParam(required = false) String searchTrdList,
			@RequestParam(required = false) String searchStatus) {
		ModelAndView mv = new ModelAndView();

//		System.out.println(searchProName+"=====");
//		System.out.println(searchTrdList+"=====");
//		System.out.println(searchStatus+"=====");
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("searchProName", searchProName);
		map.put("searchTrdList", searchTrdList);
		map.put("searchStatus", searchStatus);
//		System.out.println(map.get("searchProName")+"=====");
//		System.out.println(map.get("searchTrdList")+"=====");
//		System.out.println(map.get("searchStatus")+"=====");
		System.out.println("=====StoreProductDao totalCnt()호출=====");
		int total = storeProductDao.totalCnt(map);
		System.out.println("=====총갯수 : "+total+"=====");
		
		pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		pvo.setSearchProName(searchProName);
		pvo.setSearchTrdList(searchTrdList);
		pvo.setSearchStatus(searchStatus);
//		System.out.println("===searchProName:"+pvo.getSearchProName());
//		System.out.println("===searchTrdList:"+pvo.getSearchTrdList());
//		System.out.println("===searchStatus:"+pvo.getSearchStatus());
		
		mv.addObject("paging",pvo);
		System.out.println("=====StoreProductDao storeInfo() 호출=====");
		mv.addObject("storeInfo",storeProductDao.storeInfo());
		System.out.println("=====StoreProductDao storeGoodsList() 호출=====");
		mv.addObject("goodsList", storeProductDao.storeGoodsList(pvo));
		System.out.println("=====StoreProductDao trdListName() 호출=====");
		mv.addObject("trdListName",storeProductDao.trdListName());
		mv.addObject("total", total);
		mv.setViewName("admin/storeGoodsList");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteProduct")
	public void deleteProduct(HttpServletRequest request) {
		
		System.out.println(request.getParameter("no"));
		String[] noList = request.getParameter("no").split(",");
		for(String str_pro_no : noList) {
			System.out.println("==="+str_pro_no+"===");
			System.out.println("=====StoreProductDao deleteProduct() 호출=====");
			storeProductDao.deleteProduct(str_pro_no);
		}
	}
	
}
