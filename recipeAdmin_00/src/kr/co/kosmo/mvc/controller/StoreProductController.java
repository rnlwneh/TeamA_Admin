package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	
	@RequestMapping(value="/saveStoreGoods", method = RequestMethod.POST)
	public ModelAndView saveStoreGoods(HttpServletRequest request, StoreProductDTO vo) throws IOException {
		ModelAndView mv = new ModelAndView();
		
		MultipartFile file =vo.getFile();
		MultipartFile detailFile =vo.getDetailFile();
		
		//이미지가 저장될 절대 경로를 지정 
		HttpSession session = request.getSession();
		String r_path = session.getServletContext().getRealPath("/");
		System.out.println("Path :"+r_path);
		String img_path ="resources\\image\\";
		String detail_img_path = "resources\\detailImage\\";
		System.out.println("imgPath :"+r_path+img_path);
		StringBuffer path = new StringBuffer();
		StringBuffer detailPath = new StringBuffer();
		path.append(r_path).append(img_path);
		detailPath.append(r_path).append(detail_img_path);
		
		//이미지 이름을 연결 
		UUID uuid = UUID.randomUUID();
		String str_pro_img = uuid.toString() + file.getOriginalFilename(); //업로드 된 이미지 이름
		String str_pro_detail_img = uuid.toString() + detailFile.getOriginalFilename();
		
		path.append(str_pro_img);
		detailPath.append(str_pro_detail_img);
		vo.setStr_pro_image(str_pro_img);
		vo.setStr_pro_detail_image(str_pro_detail_img);
		System.out.println("FullPath :"+path);
		System.out.println("DeFullPath :"+detailPath);
		
		// 파일 업로드 실행 
		File f = new File(path.toString()); //실제 이미지가 저장될 경로
		try {
			file.transferTo(f);//스프링의 transferTo를 호출해서 이미지를 저장장소에 복사 
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		File df = new File(detailPath.toString());
		try {
			detailFile.transferTo(df);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
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
	
	@RequestMapping(value="/storeGoodsDetail")
	public ModelAndView storeGoodsDetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String str_pro_no = (String)request.getParameter("str_pro_no");
		System.out.println("=====StoreProductDao storeGoodsDetail() 호출=====");
		mv.addObject("goodsDetail", storeProductDao.storeGoodsDetail(str_pro_no));
		System.out.println("=====StoreProductDao trdListName() 호출=====");
		mv.addObject("trdListName",storeProductDao.trdListName());
		mv.setViewName("admin/storeGoodsDetail");
		System.out.println("detail호출 끝");
		return mv;
	}
	
	@RequestMapping(value="/updateStoreGoods")
	public ModelAndView updateStoreGoods(HttpServletRequest request, StoreProductDTO vo){
		ModelAndView mv = new ModelAndView();
		
		MultipartFile file =vo.getFile();
		MultipartFile detailFile =vo.getDetailFile();
		
		//이미지가 저장될 절대 경로를 지정 
		HttpSession session = request.getSession();
		String r_path = session.getServletContext().getRealPath("/");
		System.out.println("Path :"+r_path);
		String img_path ="resources\\image\\";
		String detail_img_path = "resources\\detailImage\\";
		System.out.println("imgPath :"+r_path+img_path);
		StringBuffer path = new StringBuffer();
		StringBuffer detailPath = new StringBuffer();
		path.append(r_path).append(img_path);
		detailPath.append(r_path).append(detail_img_path);
		
		String pre_str_pro_image = vo.getPre_str_pro_image();
		String pre_str_pro_detail_image = vo.getPre_str_pro_detail_image();
//		System.out.println("썸네일이미지이름:"+pre_str_pro_image);
//		System.out.println("상세이미지이름:"+pre_str_pro_detail_image);
//		System.out.println("경로:"+imageUrl+pre_str_pro_image);
		
		UUID uuid = UUID.randomUUID();
		// 썸네일 이미지 확인
		if(! file.isEmpty()) {
			//기존파일 삭제 후 새로 저장
			new File(path.toString()+pre_str_pro_image).delete();
			String str_pro_img = uuid.toString() + file.getOriginalFilename(); //업로드 된 이미지 이름		
			path.append(str_pro_img);
			vo.setStr_pro_image(str_pro_img);
			System.out.println("FullPath :"+path);
			
			// 파일 업로드 실행 
			File f = new File(path.toString()); //실제 이미지가 저장될 경로
			try {
				file.transferTo(f);//스프링의 transferTo를 호출해서 이미지를 저장장소에 복사 
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			// 새파일 없으면 기존 사용  
		}else{
			vo.setStr_pro_image(pre_str_pro_image);
		}
		//상세이미지 확인
		if(! detailFile.isEmpty()) {
			//기존파일 삭제 후 새로 저장
			new File(detailPath.toString()+pre_str_pro_detail_image).delete();
			String str_pro_detail_img = uuid.toString() + detailFile.getOriginalFilename(); //업로드 된 이미지 이름		
			detailPath.append(str_pro_detail_img);
			vo.setStr_pro_detail_image(str_pro_detail_img);
			System.out.println("DeFullPath :"+detailPath);
			
			// 파일 업로드 실행 
			File df = new File(detailPath.toString()); //실제 이미지가 저장될 경로
			try {
				detailFile.transferTo(df);//스프링의 transferTo를 호출해서 이미지를 저장장소에 복사 
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}else{
			vo.setStr_pro_detail_image(pre_str_pro_detail_image);
		}
		
		System.out.println("=====StoreProductDao updateGoodsList() 호출");
		storeProductDao.updateStoreGoods(vo);
		mv.setViewName("redirect:storeGoodsList");
		return mv;
		
	}
	
}
