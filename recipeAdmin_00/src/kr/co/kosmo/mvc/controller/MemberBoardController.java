package kr.co.kosmo.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dto.RecipeMemberDTO;
import kr.co.kosmo.mvc.service.RecipeMemberBoardService;

//¾îÁø
@Controller
public class MemberBoardController {

	@Autowired  // @Resource
	private RecipeMemberBoardService recipeMemberBoardService;
	

	
	@RequestMapping("/tables")
	public String memberList(Model m) {
		System.out.println("pathVal:");
		List<RecipeMemberDTO> list = recipeMemberBoardService.getMemberList();
		m.addAttribute("list", list);
		return "admin/tables";
	}
	
	@RequestMapping("/getBoard")
	public void getBoard(RecipeMemberDTO vo, Model m) {
		RecipeMemberDTO result = recipeMemberBoardService.getBoard(vo);
		m.addAttribute("board", result);
	}
	
	
	@RequestMapping("/getBoardList")
	public void getBoardList(RecipeMemberDTO vo, Model m) {
		m.addAttribute("boardList", recipeMemberBoardService.getBoardList(vo));
	}
	
	

	
	
//	@RequestMapping("/{step}")
//	public String viewPage(@PathVariable String step) {
//		System.out.println("pathVal:"+step);
//		
//		return step;
//	}
}
