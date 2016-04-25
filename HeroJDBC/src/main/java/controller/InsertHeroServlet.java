package controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import _04shop.ShopBean;
import _04shop.ShopService;

@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024 * 1024 * 500 * 5)
@WebServlet("/InsertHero")
public class InsertHeroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public InsertHeroServlet() {

    }
	ShopService shopService = new ShopService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		Map<String , String> errorMsgs = new HashMap<>();
		request.setAttribute("ErrMsg", errorMsgs);
	
		try {
			String heroNoStr = "";
			int heroNo = 0;
			String heroName = "";
			String heroPriceStr = "";
			int heroPrice = 0;
			InputStream is1 = null;
			long size1 = 0; 
			InputStream is2 = null;
			long size2 = 0;
			InputStream is3 = null;
			long size3 = 0;
			InputStream is4 = null;
			long size4 = 0;
			InputStream is5 = null;
			long size5 = 0;
			String hero = "";
			
			Collection<Part> parts = request.getParts(); 
			for(Part p : parts){
				String fld = p.getName();
				String value = request.getParameter(fld);
				if(p.getContentType() == null){
					if(fld.equals("heroNo")){
						heroNoStr = value;
						heroNoStr = heroNoStr.trim();
						if(heroNoStr == null || heroNoStr.trim().length() == 0){
							errorMsgs.put("errHeroNo", "編號不能空白");
						}else{
							try {
								heroNo = Integer.parseInt(heroNoStr);
							} catch (NumberFormatException e) {
								e.printStackTrace();
								errorMsgs.put("errHeroNo", "請填整數");
							}
						}
						request.setAttribute("heroNo", heroNo);					
					}else if(fld.equals("heroName")){
						heroName = value;
						request.setAttribute("heroName", heroName);
					}else if(fld.equals("heroPrice")){
						heroPriceStr = value;
						heroPriceStr = heroPriceStr.trim();
						if(heroPriceStr != null && heroPriceStr.trim().length() !=0){
							try {
								heroPrice = Integer.parseInt(heroPriceStr);
							} catch (NumberFormatException e) {
								e.printStackTrace();
								errorMsgs.put("errHeroPrice", "必須是數值");
							}
							request.setAttribute("heroPrice", heroPrice);
						}

					}else if(fld.equals("hero")){
						hero = value;
						if("Insert".equals(hero) || "Delete".equals(hero) || "Update".equals(hero)){
							if(heroNoStr == null || heroNoStr.trim().length()==0){
								errorMsgs.put("errHeroNo", "請輸入編號以便執行" + hero);
							}
						}
					}
				}
//				-------------------------- 圖片    ----------------------------------------
					else if(fld.equals("myfile1")){
						size1 = p.getSize();
						is1 = p.getInputStream();
					}else if(fld.equals("myfile2")){
						size2 = p.getSize();
						is2 = p.getInputStream();
					}else if(fld.equals("myfile3")){
						size3 = p.getSize();
						is3 = p.getInputStream();
					}else if(fld.equals("myfile4")){
						size4 = p.getSize();
						is4 = p.getInputStream();
					}else if(fld.equals("myfile5")){
						size5 = p.getSize();
						is5 = p.getInputStream();
					}
			}
//			------------------------------------    驗證HTML Form資料       ---------------------------------------------------------			
			if(! errorMsgs.isEmpty()){
				request.getRequestDispatcher(
						"/pages/insertHero.jsp").forward(request, response);
			}else{
//				------------------------------------    根據Model執行結果顯示View       ---------------------------------------------------------
				ShopBean bean = new ShopBean();
				bean.setHeroNo(heroNo);
				bean.setHeroName(heroName);
				bean.setHeroPrice(heroPrice);
				if(hero != null && hero.equals("Insert")){
					ShopBean result = shopService.insert(bean, is1, size1, is2, size2, is3, size3, is4, size4, is5, size5);
					if(result == null){
						errorMsgs.put("action", "Insert Fail");
					}else{
						errorMsgs.put("action", "Insert Success!");
						request.setAttribute("insert", result);
					}
					request.getRequestDispatcher(
							"/pages/insertHero.jsp").forward(request, response);
				}else if(hero != null && hero.equals("Update")){
					ShopBean result = shopService.update(bean, is1, size1, is2, size2, is3, size3, is4, size4, is5, size5);
					if(result == null){
						errorMsgs.put("action", "Update Fail");
					}else{
						errorMsgs.put("action", "Update Success!");
						request.setAttribute("update", result);
					}
					request.getRequestDispatcher(
							"/pages/insertHero.jsp").forward(request, response);
				}else if(hero != null && hero.equals("Delete")){
					boolean result = shopService.delete(bean);
					if(!result){
						request.setAttribute("delete", 0);
					}else{
						errorMsgs.put("action", "Delete Success!");
						request.setAttribute("delete", 1);
					}
					request.getRequestDispatcher(
							"/pages/insertHero.jsp").forward(request, response);
				}
			}
	
		} catch (Exception e) {
			//e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("/pages/insertHero.jsp");
			rd.forward(request, response);
		}
	}
}
