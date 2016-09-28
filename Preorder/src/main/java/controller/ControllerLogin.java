package controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import exception.AlreadyExistingMemberException;
import exception.IdPasswordNotMatchingException;
import exception.MemberNotFoundException;
import login.AuthInfo;
import login.AuthService;
import login.LoginCommand;
import login.LoginCommandValidator;
import member.MemberRegisterService;
import member.RegisterRequest;
import member.RegisterRequestValidator;

@Controller
public class ControllerLogin {
	private AuthService authService;
	private MemberRegisterService memberRegisterService;

	public void setAuthService(AuthService authService) {
		this.authService = authService;
	}

	public void setMemberRegisterService(
			MemberRegisterService memberRegisterService) {
		this.memberRegisterService = memberRegisterService;
	}

	@RequestMapping("/")
	public String homepage2(RegisterRequest rr, Errors errors, Model model) {
		if (rr.getId() != null && !rr.getId().equals("")) {
			new RegisterRequestValidator().validate(rr, errors);
			if (errors.hasErrors())
				return "main";
			try {
				memberRegisterService.regist(rr);
				return "main";
			} catch (AlreadyExistingMemberException ex) {
				model.addAttribute("errMsg", "중복된 값입니다.");
				errors.rejectValue("email", "duplicate");
				return "main";
			}
		} else {
			return "main";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String form(LoginCommand loginCommand,
			@CookieValue(value = "REMEMBER", required = false) Cookie rCookie) {
		if (rCookie != null) {
			loginCommand.setId(rCookie.getValue());
			/*System.out.println(rCookie.getValue());*/
			loginCommand.setRememberId(true);
		}
		return "dirMem/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String form(LoginCommand loginCommand, Errors errors,			
			HttpSession session, HttpServletResponse response) {
		new LoginCommandValidator().validate(loginCommand, errors);
		if (errors.hasErrors()) {
			return "dirMem/login";
		
		}
		try {
			AuthInfo authInfo = authService.authenticate(
					loginCommand.getEmail(), loginCommand.getPassword(),loginCommand.getId());
			session.setAttribute("authInfo", authInfo);

			Cookie rememberCookie = new Cookie("REMEMBER",
					loginCommand.getId());
			rememberCookie.setPath("/");
			if (loginCommand.isRememberId()) {
				rememberCookie.setMaxAge(60 * 60 * 24 * 30);
			} else {
				rememberCookie.setMaxAge(0);
			}
			response.addCookie(rememberCookie);
			return "redirect:/BoardList";
		} catch (MemberNotFoundException e) {
			errors.reject("memberNotFound");
			return "dirMem/login";
		} catch (IdPasswordNotMatchingException e) {
			errors.reject("idPasswordNotMatching");
			return "dirMem/login";
		}
	}
	@RequestMapping("/logout")
	public String form(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
}
