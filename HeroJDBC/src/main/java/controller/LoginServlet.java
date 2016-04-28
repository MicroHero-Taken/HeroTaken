package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _01member.MemberBean;
import _01member.MemberService;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private MemberService service = new MemberService();
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接收HTML Form資料
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				
		//驗證HTML Form資料
				Map<String, String> error = new HashMap<String, String>();
				request.setAttribute("error", error);

				if( email==null ||  email.length()==0) {
					error.put("email", "未輸入Email");
				}
				if(password==null || password.length()==0) {
					error.put("password", "未輸入Password");
				}
				
				if(error!=null && !error.isEmpty()) {
					request.getRequestDispatcher(
							"/secure/login.jsp").forward(request, response);
					return;
				}
				
		//呼叫Model
				MemberBean bean = service.login( email, password);
				MemberBean LoginBean = service.selectByEmail(email);
		//根據Model執行結果顯示View
				if(bean==null) {
					error.put("password", "登入失敗，請再次輸入ID/PWD");
					request.getRequestDispatcher(
							"/secure/login.jsp").forward(request, response);
				} else {
					HttpSession session = request.getSession();
					session.setAttribute("user", bean);
					
					HttpSession sessionLogin =request.getSession();
					sessionLogin.setAttribute("Login", LoginBean);
					
					String path = request.getContextPath();
					response.sendRedirect(path + "/index1.jsp");
				}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		doGet(request, response);
	}
	
}
