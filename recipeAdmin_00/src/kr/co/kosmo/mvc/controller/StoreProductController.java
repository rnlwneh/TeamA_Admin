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

//����
@Controller
public class StoreProductController {
	
	@Autowired
	StoreProductDao storeProductDao;
	
	@RequestMapping(value="/addStoreGoods")
	public ModelAndView addStoreGoods(){
		ModelAndView mv = new ModelAndView();
		
		System.out.println("=====StoreProductDao trdListName() ȣ��=====");
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
		
		//�̹����� ����� ���� ��θ� ���� 
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
		
		//�̹��� �̸��� ���� 
		UUID uuid = UUID.randomUUID();
		String str_pro_img = uuid.toString() + file.getOriginalFilename(); //���ε� �� �̹��� �̸�
		String str_pro_detail_img = uuid.toString() + detailFile.getOriginalFilename();
		
		path.append(str_pro_img);
		detailPath.append(str_pro_detail_img);
		vo.setStr_pro_image(str_pro_img);
		vo.setStr_pro_detail_image(str_pro_detail_img);
		System.out.println("FullPath :"+path);
		System.out.println("DeFullPath :"+detailPath);
		
		// ���� ���ε� ���� 
		File f = new File(path.toString()); //���� �̹����� ����� ���
		try {
			file.transferTo(f);//�������� transferTo�� ȣ���ؼ� �̹����� ������ҿ� ���� 
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
		System.out.println("=====StoreProductDao addStoreGoods() ȣ��=====");
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
		System.out.println("=====StoreProductDao totalCnt()ȣ��=====");
		int total = storeProductDao.totalCnt(map);
		System.out.println("=====�Ѱ��� : "+total+"=====");
		
		pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		pvo.setSearchProName(searchProName);
		pvo.setSearchTrdList(searchTrdList);
		pvo.setSearchStatus(searchStatus);
//		System.out.println("===searchProName:"+pvo.getSearchProName());
//		System.out.println("===searchTrdList:"+pvo.getSearchTrdList());
//		System.out.println("===searchStatus:"+pvo.getSearchStatus());
		
		mv.addObject("paging",pvo);
		System.out.println("=====StoreProductDao storeInfo() ȣ��=====");
		mv.addObject("storeInfo",storeProductDao.storeInfo());
		System.out.println("=====StoreProductDao storeGoodsList() ȣ��=====");
		mv.addObject("goodsList", storeProductDao.storeGoodsList(pvo));
		System.out.println("=====StoreProductDao trdListName() ȣ��=====");
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
			System.out.println("=====StoreProductDao deleteProduct() ȣ��=====");
			storeProductDao.deleteProduct(str_pro_no);
		}
	}
	
	@RequestMapping(value="/storeGoodsDetail")
	public ModelAndView storeGoodsDetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String str_pro_no = (String)request.getParameter("str_pro_no");
		System.out.println("=====StoreProductDao storeGoodsDetail() ȣ��=====");
		mv.addObject("goodsDetail", storeProductDao.storeGoodsDetail(str_pro_no));
		System.out.println("=====StoreProductDao trdListName() ȣ��=====");
		mv.addObject("trdListName",storeProductDao.trdListName());
		mv.setViewName("admin/storeGoodsDetail");
		System.out.println("detailȣ�� ��");
		return mv;
	}
	
	@RequestMapping(value="/updateStoreGoods")
	public ModelAndView updateStoreGoods(HttpServletRequest request, StoreProductDTO vo){
		ModelAndView mv = new ModelAndView();
		
		MultipartFile file =vo.getFile();
		MultipartFile detailFile =vo.getDetailFile();
		
		//�̹����� ����� ���� ��θ� ���� 
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
//		System.out.println("������̹����̸�:"+pre_str_pro_image);
//		System.out.println("���̹����̸�:"+pre_str_pro_detail_image);
//		System.out.println("���:"+imageUrl+pre_str_pro_image);
		
		UUID uuid = UUID.randomUUID();
		// ����� �̹��� Ȯ��
		if(! file.isEmpty()) {
			//�������� ���� �� ���� ����
			new File(path.toString()+pre_str_pro_image).delete();
			String str_pro_img = uuid.toString() + file.getOriginalFilename(); //���ε� �� �̹��� �̸�		
			path.append(str_pro_img);
			vo.setStr_pro_image(str_pro_img);
			System.out.println("FullPath :"+path);
			
			// ���� ���ε� ���� 
			File f = new File(path.toString()); //���� �̹����� ����� ���
			try {
				file.transferTo(f);//�������� transferTo�� ȣ���ؼ� �̹����� ������ҿ� ���� 
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			// ������ ������ ���� ���  
		}else{
			vo.setStr_pro_image(pre_str_pro_image);
		}
		//���̹��� Ȯ��
		if(! detailFile.isEmpty()) {
			//�������� ���� �� ���� ����
			new File(detailPath.toString()+pre_str_pro_detail_image).delete();
			String str_pro_detail_img = uuid.toString() + detailFile.getOriginalFilename(); //���ε� �� �̹��� �̸�		
			detailPath.append(str_pro_detail_img);
			vo.setStr_pro_detail_image(str_pro_detail_img);
			System.out.println("DeFullPath :"+detailPath);
			
			// ���� ���ε� ���� 
			File df = new File(detailPath.toString()); //���� �̹����� ����� ���
			try {
				detailFile.transferTo(df);//�������� transferTo�� ȣ���ؼ� �̹����� ������ҿ� ���� 
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}else{
			vo.setStr_pro_detail_image(pre_str_pro_detail_image);
		}
		
		System.out.println("=====StoreProductDao updateGoodsList() ȣ��");
		storeProductDao.updateStoreGoods(vo);
		mv.setViewName("redirect:storeGoodsList");
		return mv;
		
	}
	
}
