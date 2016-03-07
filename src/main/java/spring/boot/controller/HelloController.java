package spring.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



/**
 *@RestController combines @Controller and @ResponseBody, two annotations that results in web requests returning data rather than a view. 
 */
@Controller
public class HelloController {

	@RequestMapping("/")
	@ResponseBody
	public String index() {
		return "Greetings from Spring Boot!";
	}

}
