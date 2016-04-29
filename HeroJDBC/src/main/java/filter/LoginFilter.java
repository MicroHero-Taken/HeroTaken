package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {
    public LoginFilter() {   
    }
    
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		 HttpServletRequest hrequest = (HttpServletRequest)request;
		    HttpServletResponse hresponse = (HttpServletResponse)response;
		    String user=(String)hrequest.getSession().getAttribute("user");
		 
		if(user==null){
		  response.setContentType("text/html;charset=UTF-8");
		  PrintWriter out=response.getWriter();
		  out.print("<html><head><title></title></head><body>");
		  out.print("抱歉 你無權進入<br>請重新登入");
		  hresponse.sendRedirect("secure/login.jsp");//導向登入頁面
		  out.print("</body></html>");
		}
		else
		  chain.doFilter(request, response);
		}   
		
	public void init(FilterConfig fConfig) throws ServletException {
	}
	public void destroy() {
	}
}