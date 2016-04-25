package filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

import _04shop.ShopBean;
import _04shop.ShopService;

@WebFilter(
		urlPatterns = { "/*" }, 
		initParams = { 
				@WebInitParam(name = "url_1", value = "/pages/shop.jsp"),
		})
public class ShopSkinFilter implements Filter {

    public ShopSkinFilter() {
        
    }

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
//		--------------------------------------------        取造型         --------------------------------------------------------------
		ShopService service = new ShopService();
		List<ShopBean> heroImg = service.select();
		request.setAttribute("heroSkin1", heroImg);	
		
		ShopBean heroInfo1 = service.selectByNo(1);		ShopBean heroInfo13 = service.selectByNo(13);
		ShopBean heroInfo2 = service.selectByNo(2);      ShopBean heroInfo14 = service.selectByNo(14);
		ShopBean heroInfo3 = service.selectByNo(3);      ShopBean heroInfo15 = service.selectByNo(15);
		ShopBean heroInfo4 = service.selectByNo(4);		ShopBean heroInfo16 = service.selectByNo(16);
		ShopBean heroInfo5 = service.selectByNo(5);		ShopBean heroInfo17 = service.selectByNo(17);
		ShopBean heroInfo6 = service.selectByNo(6);		ShopBean heroInfo18 = service.selectByNo(18);
		ShopBean heroInfo7 = service.selectByNo(7);		ShopBean heroInfo19 = service.selectByNo(19);
		ShopBean heroInfo8 = service.selectByNo(8);		ShopBean heroInfo20 = service.selectByNo(20);
		ShopBean heroInfo9 = service.selectByNo(9);		ShopBean heroInfo21 = service.selectByNo(21);
		ShopBean heroInfo10 = service.selectByNo(10);	ShopBean heroInfo22 = service.selectByNo(22);
		ShopBean heroInfo11 = service.selectByNo(11);	ShopBean heroInfo23 = service.selectByNo(23);
		ShopBean heroInfo12 = service.selectByNo(12);	ShopBean heroInfo24 = service.selectByNo(24);
		
		request.setAttribute("heroSkin1", heroInfo1);			request.setAttribute("heroSkin13", heroInfo13);
		request.setAttribute("heroSkin2", heroInfo2);			request.setAttribute("heroSkin14", heroInfo14);	
		request.setAttribute("heroSkin3", heroInfo3);			request.setAttribute("heroSkin15", heroInfo15);
		request.setAttribute("heroSkin4", heroInfo4);			request.setAttribute("heroSkin16", heroInfo16);
		request.setAttribute("heroSkin5", heroInfo5);			request.setAttribute("heroSkin17", heroInfo17);
		request.setAttribute("heroSkin6", heroInfo6);			request.setAttribute("heroSkin18", heroInfo18);
		request.setAttribute("heroSkin7", heroInfo7);			request.setAttribute("heroSkin19", heroInfo19);
		request.setAttribute("heroSkin8", heroInfo8);			request.setAttribute("heroSkin20", heroInfo20);
		request.setAttribute("heroSkin9", heroInfo9);			request.setAttribute("heroSkin21", heroInfo21);
		request.setAttribute("heroSkin10", heroInfo10);			request.setAttribute("heroSkin22", heroInfo22);
		request.setAttribute("heroSkin11", heroInfo11);			request.setAttribute("heroSkin23", heroInfo23);
		request.setAttribute("heroSkin12", heroInfo12);			request.setAttribute("heroSkin24", heroInfo24);
		
//		----------------------------------------------------------------------------------------------------------
		
		
		
		
	
		
		
		

		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
