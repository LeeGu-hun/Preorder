package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerLogin {
	

	@RequestMapping("/")
	public String home() {
		

		
		return "main";
	}
	
}
