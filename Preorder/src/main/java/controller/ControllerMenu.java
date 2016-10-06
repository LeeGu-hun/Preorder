package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.DaoMenu;
import login.AuthInfo;
import member.MenuCommand;

@Controller
public class ControllerMenu {
	private DaoMenu daomenu;
	
	public void setDaomenu(DaoMenu daomenu) {
		this.daomenu = daomenu;
	}

	@RequestMapping(value = "/menuRegist")
	public String list(MenuCommand menuCommand, HttpSession session, HttpServletRequest request, Model model) {
		// 업로드 파일 설정 업로드할 경로 정하기
		ServletContext context = request.getSession().getServletContext();
		String realPath = context.getRealPath("/") + "img";
		// 파일 크기 설정
		int maxSize = 10 * 1024 * 1024;
		// type설정
		String encType = "UTF-8";
		// 파일이름이 같으면 뒤에 숫자 붙이기

		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		// 파일 업로드
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, realPath, maxSize, encType, policy);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		File file = null;
		// DB에 넣을 파일 이름 구하기
		if (multi.getFile("file") != null) {
			file = multi.getFile("file");
		}
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		menuCommand.setCategory(multi.getParameter("category"));
		menuCommand.setFoodmenu(multi.getParameter("foodmenu"));
		menuCommand.setPrice(Integer.parseInt(multi.getParameter("price")));
		menuCommand.setFoodimage(file.getName());
		menuCommand.setStore_no(authInfo.getStore_no());
		daomenu.insert(menuCommand);
		return "/main";
	}
}