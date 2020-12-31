package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.ClassListDao;

import kr.co.kosmo.mvc.dto.ClassListDTO;
import kr.co.kosmo.mvc.dto.RecipeMemberDTO;



@Controller
public class ClassListController {
	
		@Autowired
		ClassListDao classListdao;

		
		
		
		 @RequestMapping("/newClass")
		public ModelAndView newClass() {
			ModelAndView mv = new ModelAndView();		
			List<ClassListDTO> newList = classListdao.getClassAll();
			mv.addObject("newList", newList);
			mv.setViewName("admin/newClass");
			System.out.println(newList);
			return mv;
		}


		
		

		@RequestMapping(value="/newClassList", method = RequestMethod.POST)
		public ModelAndView getClassApl(int admin_app) {
			ModelAndView mv = new ModelAndView();		
			List<ClassListDTO> aplList = classListdao.getNewClass(admin_app);
			mv.addObject("aplList", aplList);
			mv.setViewName("admin/newClass");
			System.out.println(aplList);
			return mv;
				
	}
		
		
		
		@RequestMapping(value="/class_write")
		public ModelAndView classListDetail(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();	
			String class_no = (String)request.getParameter("class_no");		
		
			mv.addObject("classDetail", classListdao.getClassDetail(class_no));
			System.out.println(classListdao.getClassDetail(class_no).getKind_tag_no());
			
			mv.setViewName("admin/class_write");
			return mv;
		}
		

		
		@RequestMapping(value="/updateClass", method = RequestMethod.POST)
		public String updateClass(ClassListDTO vo) throws IOException {
		
			classListdao.updateClass(vo);
			System.out.println(vo.getAdmin_app());
			System.out.println(vo.getClass_content());
			System.out.println(vo.getClass_cooktime());
			System.out.println(vo.getClass_detail_info());
			System.out.println(vo.getMem_no());
			System.out.println(vo.getStep());
			System.out.println("클라스넘버"+vo.getClass_no());
			System.out.println(vo.getClass_recipe_video());
			System.out.println(vo.getClass_period());
			System.out.println(vo.getClass_price());
			System.out.println(vo.getMate_name());
			System.out.println(vo.getMate_cnt());
			System.out.println(vo.getKind_tag_no());
			System.out.println(vo.getMaterial_tag_no());
			System.out.println(vo.getTheme_tag_no());

		
			return "redirect:newClass";
		}
		
		
		   @RequestMapping("/updateClass")
		   public String updateClasses(@ModelAttribute("classListDTO") ClassListDTO vo, MultipartHttpServletRequest file)
		         throws Exception {

				classListdao.updateClass(vo);

		      // 파일 이름 변경
		      UUID uuid = UUID.randomUUID();

		      List<MultipartFile> fileList = file.getFiles("file");

		      String path = "C:\\Users\\haj10\\OneDrive\\바탕 화면\\mainWorkspace\\recipeAdmin_00_1224\\WebContent\\resources\\image\\FoodImg\\";

		      for (MultipartFile mf : fileList) {

		         String originFileName = mf.getOriginalFilename(); // 원본 파일 명

		         long fileSize = mf.getSize(); // 파일 사이즈

		         System.out.println("originFileName : " + originFileName);

		         System.out.println("fileSize : " + fileSize);

		         String safeFile = path + originFileName;

		         vo.setClass_thumbnail(originFileName);

		         try {

		            mf.transferTo(new File(safeFile));

		         } catch (IllegalStateException e) {

		            e.printStackTrace();
		         } catch (IOException e) {

		            e.printStackTrace();
		         }
		      }

		      return "redirect:newClass";
		   }


	
		
		
}


