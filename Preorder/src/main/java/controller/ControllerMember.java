package controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.TypeMismatchException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.Member;
import dao.DaoMember;
import exception.AlreadyExistingMemberException;
import exception.IdPasswordNotMatchingException;
import exception.MemberNotFoundException;
import login.AuthInfo;
import login.AuthService;
import member.ChangePasswordService;
import member.ChangePwdCommand;
import member.ChangePwdCommandValidator;
import member.MemberRegisterService;
import member.RegisterRequest;
import member.RegisterRequestValidator;

@Controller
@RequestMapping("/member")
public class ControllerMember {
	private DaoMember daoMember;
	
	
	

	private MemberRegisterService memberRegisterService;
	private ChangePasswordService changePasswordService;
	private AuthService authService;

	public void setChangePasswordService(ChangePasswordService changePasswordService) {
		this.changePasswordService = changePasswordService;
	}
	public void setDaoMember(DaoMember daoMember) {
		this.daoMember= daoMember;
	}
	
	public void setMemberRegisterService(
			MemberRegisterService memberRegisterService) {
		this.memberRegisterService = memberRegisterService;
	}
	public void setAuthService(AuthService authService) {
		this.authService = authService;
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String handleStep3(RegisterRequest rr, Errors errors,
			Model model, HttpSession session) {
		new RegisterRequestValidator().validate(rr, errors);
		if (errors.hasErrors())
			return "main";
		try {
			memberRegisterService.registStore(rr);
			memberRegisterService.regist(rr);
//			AuthInfo authInfo = authService.authenticate(
//					rr.getEmail(), rr.getPassword());
//			session.setAttribute("authInfo", authInfo);
			model.addAttribute("memberName", rr.getName());
			return "dirMem/joinSuccess";
		} catch (AlreadyExistingMemberException ex) {
			errors.rejectValue("email", "duplicate");
			return "main";
		}
	}
	
	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable("id") String memId, 
			Model model) {
		Member member = daoMember.selectById(memId);
		if (member == null) {
			throw new MemberNotFoundException();
		}
		model.addAttribute("member", member);
		return "member/memberDetail";
	}
	
	@RequestMapping(value="/changePassword", method = RequestMethod.GET)
	public String form(@ModelAttribute("command") ChangePwdCommand pwdCmd) {
		return "dirMem/changePwdForm";
	}

	@RequestMapping(value="/changePassword", method = RequestMethod.POST)
	public String submit(@ModelAttribute("command") ChangePwdCommand pwdCmd, Errors errors, HttpSession session) {
	new ChangePwdCommandValidator().validate(pwdCmd, errors);
		if (errors.hasErrors()) {
			return "dirMem/changePwdForm";
		}
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		try {
			changePasswordService.changePassword(authInfo.getId(),authInfo.getEmail(), pwdCmd.getCurrentPassword(),
					pwdCmd.getNewPassword());
			return "dirMem/changedPwd";
		} catch (IdPasswordNotMatchingException e) {
			errors.rejectValue("currentPassword", "notMatching");
			return "edit/changePwdForm";
		}
	}


	@ExceptionHandler(TypeMismatchException.class)
	public String handleTypeMismatchException(TypeMismatchException ex) {
		return "member/invalidId";
	}

	@ExceptionHandler(MemberNotFoundException.class)
	public String handleNotFoundException() throws IOException {
		return "member/noMember";
	}

}
