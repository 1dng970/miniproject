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
	 
	 //mdchice list 출력하기
	   @GetMapping("/home/index.do")
	   public String mdchoice(Model m){
		   List<mdchoice_DTO> mdall = this.dao.mdchoice();
		   System.out.println(mdall);
		   m.addAttribute("mdall",mdall);	
	      return null;
	   }
	}