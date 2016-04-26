package filter;

import java.io.IOException;

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
import _01member.MemberService;

@WebFilter(
		urlPatterns = { "/pages/Top.jsp" }, 
		initParams = { 
				@WebInitParam(name = "url_1", value = "/pages/Top.jsp"),
				@WebInitParam(name = "url_2", value = "/pages/shop.jsp")
		})
public class UpdateMoney implements Filter {

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) request).getSession();
		MemberBean bean = (MemberBean)session.getAttribute("Login");
		int memberNo = bean.getMemberNo();
		
		MemberService memberService =new MemberService();
		MemberBean memberBean = memberService.selectById(memberNo);
		int coin = memberBean.getCoin();
		request.setAttribute("money", coin);
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
