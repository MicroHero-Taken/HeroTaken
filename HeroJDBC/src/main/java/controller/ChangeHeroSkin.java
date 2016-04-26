package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _01member.MemberBean;
import _01member.MemberService;
import _04shop.ShopBean;
import _04shop.ShopService;

@WebServlet("/ChangeHeroSkin")
public class ChangeHeroSkin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//利用heroName找heroNo
		String heroName = request.getParameter("heroName");
		
		ShopService shopService = new ShopService();
		ShopBean shopBean = shopService.selectByName(heroName);
		int heroNo = shopBean.getHeroNo();
		
		//當前會員
		HttpSession session = request.getSession();
		MemberBean bean = (MemberBean)session.getAttribute("Login");
		int memberNo = bean.getMemberNo();
		
		//抓到No後，修改memberHeroStatus狀態
		MemberService memberService = new MemberService();
		memberService.updateHeroStatus(memberNo, heroNo);
		
		String path = request.getContextPath();
		response.sendRedirect(path + "/index1.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
