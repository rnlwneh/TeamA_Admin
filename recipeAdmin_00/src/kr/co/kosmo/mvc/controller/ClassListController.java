package kr.co.kosmo.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.ClassListDao;
import kr.co.kosmo.mvc.dto.ClassListDTO;


@Controller
public class ClassListController {
	
		@Autowired
		ClassListDao classListdao;
		
		@RequestMapping("/chiefManage")
		public ModelAndView ClassList() {
			ModelAndView mv = new ModelAndView();
			List<ClassListDTO> cList = classListdao.getClassList();
			mv.addObject("cList", cList);
			mv.setViewName("admin/chiefManage");
			return mv;
		}
}


