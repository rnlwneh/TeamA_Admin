package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.ClassListDao;
import kr.co.kosmo.mvc.dto.ClassListDTO;



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
			return mv;
		}


		
		

		@RequestMapping(value="/newClassList", method = RequestMethod.POST)
		public ModelAndView getClassApl(int admin_app) {
			ModelAndView mv = new ModelAndView();		
			List<ClassListDTO> aplList = classListdao.getNewClass(admin_app);
			mv.addObject("aplList", aplList);
			mv.setViewName("admin/newClass");
			return mv;
				
	}
		
		
		
		@RequestMapping(value="/class_write")
		public ModelAndView classListDetail(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();	
			String class_no = (String)request.getParameter("class_no");		
		
			mv.addObject("classDetail", classListdao.getClassDetail(class_no));
			
			mv.setViewName("admin/class_write");
			return mv;
		}
		

		
		@RequestMapping(value="/updateClass", method = RequestMethod.POST)
		public String updateClass(ClassListDTO vo) throws IOException {
		
			classListdao.updateClass(vo);
		
			return "redirect:newClass";
		}
		
		
		   @RequestMapping("/updateClass")
		   public String updateClasses(@ModelAttribute("classListDTO") ClassListDTO vo, MultipartHttpServletRequest file, HttpServletRequest request)
		         throws Exception {

				classListdao.updateClass(vo);

			HttpSession session = request.getSession();
			String r_path = session.getServletContext().getRealPath("/");
			
		      List<MultipartFile> fileList = file.getFiles("file");

		      String path = r_path + "resources\\image\\FoodImg\\";

		      for (MultipartFile mf : fileList) {

		         String originFileName = mf.getOriginalFilename(); // 원본 파일 명

		         long fileSize = mf.getSize(); // 파일 사이즈

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


