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
		urlPatterns = { "/index1.jsp","/pages/shop.jsp" }, 
		initParams = { 
				@WebInitParam(name = "url_1", value = "/index1.jsp"),
				@WebInitParam(name = "url_2", value = "/pages/shop.jsp")
		})
public class UpdateMemberInfo implements Filter {

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) request).getSession();
		MemberBean bean = (MemberBean)session.getAttribute("Login");
		System.out.println(bean);
		int memberNo = bean.getMemberNo();
		System.out.println(memberNo);
		MemberService memberService =new MemberService();
		MemberBean memberBean = memberService.selectById(memberNo);
		System.out.println("Filter-memberBean: " +memberBean);
		request.setAttribute("memberInfo", memberBean);
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
