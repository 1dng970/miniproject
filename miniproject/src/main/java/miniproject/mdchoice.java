package miniproject;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class mdchoice {

	@Resource(name="dto_mechoice")
	   //dto_mechoice dto;
	
	
@GetMapping("/mdchoice.do")
public String mdchoice(){
	
	
	return null;	
}
	
}
