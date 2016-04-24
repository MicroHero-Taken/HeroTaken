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
import javax.servlet.http.HttpSession;

import _01member.MemberBean;
import _01member.MemberService;

@WebFilter(
		urlPatterns = { "/*" }, 
		initParams = { 
				@WebInitParam(name = "url_1", value = "/index1.jsp")
		})
public class LoginInfo implements Filter {
    public LoginInfo() {
   
    }

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		MemberBean bean = (MemberBean)request.getAttribute("Login");
		int no = bean.getMemberNo();
		
		MemberService memberService = new MemberService();
		MemberBean nowMember = memberService.selectById(no);
		request.setAttribute("nowMember", nowMember);
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
