package kr.co.kosmo.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.ChiefApplyInfoDao;
import kr.co.kosmo.mvc.dto.ChiefApplyDTO;



@Controller
public class ChiefApplyController {

	
	@Autowired
	ChiefApplyInfoDao chiefApplyInfoDao;
	
	@RequestMapping("/newChief")
	public ModelAndView ClassList() {
		ModelAndView mv = new ModelAndView();
		List<ChiefApplyDTO> cAply = chiefApplyInfoDao.getApplyList();
		mv.addObject("cAply", cAply);
		mv.setViewName("admin/newChief");
		return mv;
	}
	
	
	

	
	  @RequestMapping(value = "/upgrade")
	    public String ajaxTest(HttpServletRequest request) throws Exception {
	            
	        String[] ajaxMsg = request.getParameterValues("valueArr");
	        int size = ajaxMsg.length;

	        for(int i=0; i<size; i++) {
	        	chiefApplyInfoDao.memberUpgrade(ajaxMsg[i]);
	        	chiefApplyInfoDao.delete(ajaxMsg[i]);
	        }

	        return "redirect:newChief";
	    }
	
	
	
	
	
	
}
