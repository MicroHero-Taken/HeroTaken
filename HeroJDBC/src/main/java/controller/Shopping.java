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
import _03memberHero.MemberHeroBean;
import _03memberHero.MemberHeroService;
import _04shop.ShopBean;
import _04shop.ShopService;

@WebServlet("/Shopping")
public class Shopping extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int price = 0;
		String priceStr = request.getParameter("price");
		if(priceStr != null && priceStr.trim().length()!=0){
			price = Integer.parseInt(priceStr);
		}
		//會員選取英雄的編號
		String heroName = request.getParameter("name");;
		ShopService shopService = new ShopService();
		ShopBean shopNameBean = shopService.selectByName(heroName);
		int heroNo = shopNameBean.getHeroNo();
		System.out.println(heroName);
		System.out.println(heroNo);
		
		//先取得當前會員編號，再取進入shop.JSP時的金錢
		HttpSession session = request.getSession();
		MemberBean bean = (MemberBean)session.getAttribute("Login");
		int memberNo = bean.getMemberNo();
		//System.out.println(memberNo);
		MemberService service = new MemberService();
		MemberBean bean2 = service.selectById(memberNo);
		request.setAttribute("shopMember", bean2);
		//System.out.println(bean2.getCoin());
		//System.out.println(price);
		
		//判斷是否夠錢買造型
		if( bean2.getCoin() >= price ){
			//新增至倉庫
			MemberHeroService MemberHeroService = new MemberHeroService();
			MemberHeroBean memberHeroBean = new MemberHeroBean(memberNo, heroNo);
			MemberHeroService.insert(memberHeroBean);
			//扣款
			int balance = bean2.getCoin() - price;
			service.updateCoin(memberNo, balance);
			String message = " 購 買 成 功 ! ";
			request.setAttribute("message1", message);
			RequestDispatcher rd = request.getRequestDispatcher("/pages/shop.jsp");
			rd.forward(request, response);
		}else{
			String message = "餘 額 不 足 ! ";
			request.setAttribute("message2", message);
			RequestDispatcher rd = request.getRequestDispatcher("/pages/shop.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
