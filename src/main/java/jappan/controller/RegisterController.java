package jappan.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import jappan.model.Users;
import jappan.service.UserService;
import jappan.validate.RegisterValidator;
import jappan.validate.UserValidator;

@Controller
public class RegisterController {
	@Autowired
	private UserService userService;
	@Autowired
	private RegisterValidator registerValidator;
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		if(binder.getTarget()==null) {
			return;
		}
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
		if(binder.getTarget().getClass()== Users.class) {
			binder.setValidator(registerValidator);
		}
	}
	@GetMapping("/register")
	public String createUser(Model model) {
		model.addAttribute("registerForm", new Users());
		return "login/register";
	}
	@PostMapping("/register/save")
	public String saveUser(Model model,@ModelAttribute("registerForm") @Validated Users user, BindingResult result) {
		if(result.hasErrors()) {
			return "login/register";
		}
		
		userService.createUser(user);
		return "redirect:/login";
	}

}
