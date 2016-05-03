package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _01member.MemberBean;


public class LoginFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		 //把ServletRequest和ServletResponse转换成真正的类型
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession session = req.getSession();
        //由于web.xml中设置Filter过滤全部请求，可以排除不需要过滤的url
        String requestURI = req.getRequestURI();
        String[] loginPageResource={"login.jsp","LoginServlet","Login.js","sign-in-with-google.jpg",
        		"deco1.png","A.jpg","B.jpg","C.png","D.jpg","E.jpg","F.jpg","G.png","H.jpg","I.jpg",
        		"parse","All_Might.jpg","x.png"};
        boolean loginRelative=false;
        for(int i=0;i<loginPageResource.length;i++){
        	if(requestURI.indexOf(loginPageResource[i])!=-1){
        		loginRelative=true;
        	}
        }
        if(loginRelative){
            chain.doFilter(request, response);
            return;
        }
        //判断用户是否登录，进行页面的处理
        if(null == session.getAttribute("user")){
            //未登录用户，重定向到登录页面
        	session.setAttribute("requestURI", requestURI);
        	String contextPath=req.getContextPath();
            ((HttpServletResponse)response).sendRedirect(contextPath+"/secure/login.jsp");
            return;
        } else {
            //已登录用户，允许访问
        	String checkURI=req.getRequestURI();
        	String[] adminStrs={"backend.jsp","insertHero.jsp"};
        	boolean mustAdmin=false;
        	for(int i=0;i<adminStrs.length;i++){
        		if(checkURI.indexOf(adminStrs[i])!=-1){
        			mustAdmin=true;
        		}
        	}
        	if(mustAdmin==true){
        		MemberBean bean=(MemberBean)session.getAttribute("user");
        		int memberStatusNo=bean.getMemberStatusNo();
        		if(memberStatusNo==2){
        			chain.doFilter(request, response);
        			return;
        		}else{
        			((HttpServletResponse)response).sendRedirect(req.getContextPath()+"/pages/noAuthority.jsp");
        		}
        	}else{
        		chain.doFilter(request, response);
        	}            
        }
	}
    public LoginFilter() {
    }
	public void init(FilterConfig fConfig) throws ServletException {
	}
	public void destroy() {
	}
}