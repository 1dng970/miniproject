package miniproject;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class home_controller {

	 @Resource(name="mdchoice_DTO")
	 mdchoice_DTO dto;
	   
	 @Resource(name="mdchoice_DAO")
	 mdchoice_DAO dao;
	 
	 
	 @Resource(name="weekinfo_DTO")
	 weekinfo_DTO dto1;
	   
	 @Resource(name="weekinfo_DAO")
	 weekinfo_DAO dao1;
	 
	 @GetMapping("/home/index.do")
	 public String indexphoto(Model model) {
	     // weekinfo 리스트 가져오기
	     List<weekinfo_DTO> wkall = this.dao1.wkchoice();
	     // mdchoice 리스트 가져오기
	     List<mdchoice_DTO> mdall = this.dao.mdchoice();

	     // 두 리스트를 모델에 추가
	     model.addAttribute("wkall", wkall);
	     model.addAttribute("mdall", mdall);

	     // JSP 페이지로 데이터를 전달
	     return "home/index"; // home/index.jsp로 결과를 반환
	 }
	 
	
	 //mdchice 사진 리트스
	 /*
	   @GetMapping("/home/index.do")
	   public String mdchoice(Model m){
		   List<mdchoice_DTO> mdall = this.dao.mdchoice();
		   //System.out.println(mdall);
		   m.addAttribute("mdall",mdall);	
	      return null;
	   }
	  */
	}