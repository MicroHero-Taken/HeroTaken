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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import _01member.MemberBean;
import _03memberHero.MemberHeroBean;
import _03memberHero.MemberHeroService;




@WebFilter(
		urlPatterns = { "/pages/memberHero.jsp" }, 
		initParams = { 
				@WebInitParam(name = "url_1", value = "/pages/memberHero.jsp")
		})
public class Garage implements Filter {

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) request).getSession();
		MemberBean bean = (MemberBean)session.getAttribute("Login");
		int memberNo = bean.getMemberNo();
		System.out.println("Garage-memberNo : "+memberNo);

		MemberHeroService memberHeroService = new MemberHeroService();
		List<MemberHeroBean> beans = memberHeroService.select(memberNo);
		request.setAttribute("memberHero", beans);
		for(MemberHeroBean mhb : beans){
			System.out.println("Garage-heroNo= "+mhb.getHeroNo());
		}
		//查詢比數
		int i = memberHeroService.selectCount(memberNo);
		request.setAttribute("count", i);
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
