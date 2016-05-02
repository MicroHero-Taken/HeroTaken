package controller;

import java.io.IOException;
import java.util.List;

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
		MemberHeroService MemberHeroService = new MemberHeroService();
		ShopService shopService = new ShopService();
		
		int heroNo = 0;
		int price = 0;
		String priceStr = request.getParameter("price");
		if(priceStr != null && priceStr.trim().length()!=0){
			price = Integer.parseInt(priceStr);
		}
		//會員選取英雄的編號
		String heroName = request.getParameter("name");
		if(heroName == null || heroName.trim().length() ==0){
			String message = " 此英雄未上架 ! ";
			request.setAttribute("message4", message);
			RequestDispatcher rd = request.getRequestDispatcher("/pages/shop.jsp");
			rd.forward(request, response);
			return;
		}
		ShopBean shopNameBean = shopService.selectByName(heroName);
		heroNo = shopNameBean.getHeroNo();
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
		if( bean2.getCoin() >= price  ){
			//判斷選取的圖片是否為空的
			if(heroName == null && priceStr == null){
				String message = " 英雄未上架 ! ";
				request.setAttribute("message4", message);
				RequestDispatcher rd = request.getRequestDispatcher("/pages/shop.jsp");
				rd.forward(request, response);
				return;
			}
			
			//判斷是該會員是否已經購買過此英雄
			List<MemberHeroBean> heros = MemberHeroService.select(memberNo);
			for(MemberHeroBean beanHero :heros){
				//System.out.println(beanHero.getHeroNo());
				if(beanHero.getHeroNo() == heroNo){
					String message = " 已擁有此英雄 ! ";
					request.setAttribute("message3", message);
					RequestDispatcher rd = request.getRequestDispatcher("/pages/shop.jsp");
					rd.forward(request, response);
					return;
				}
			}
			
			//新增至倉庫
			MemberHeroBean memberHeroBean = new MemberHeroBean(memberNo, heroNo);
			MemberHeroService.insert(memberHeroBean);
			//扣款
			int balance = bean2.getCoin() - price;
			service.updateCoin(memberNo, balance);

			//導向頁面
			String message = " 購 買 成 功 ! ";
//			request.setAttribute("message1", message);
//			RequestDispatcher rd = request.getRequestDispatcher("/pages/shop.jsp");
//			rd.forward(request, response);
			
			HttpSession session2 = request.getSession();
			session2.setAttribute("message1", message);
			String path = request.getContextPath();
			response.sendRedirect(path + "/pages/shop.jsp");
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
