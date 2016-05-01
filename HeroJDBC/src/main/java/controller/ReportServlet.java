package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _09report.ReportBean;
import _09report.ReportService;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int memberNo = 0;
		String noStr = request.getParameter("memberNo");
		if(noStr != null && noStr.trim().length() !=0){
			memberNo = Integer.parseInt(noStr);
		}
		String email = request.getParameter("email");
		String detail = request.getParameter("detail");
		
		System.out.println("reportServletNo: " +memberNo);
		System.out.println("reportServletEmail: " +email);
		System.out.println("reportServletDetail: " +detail);
		
		if(email == null || detail== null){
			String path = request.getContextPath();
			response.sendRedirect(path + "/pages/report.jsp");
			return;
		}else{
			ReportService reportService = new ReportService();
			ReportBean bean = new ReportBean(memberNo,email,detail); 
			ReportBean reportBean = reportService.insert(bean);
			String path = request.getContextPath();
			response.sendRedirect(path + "/pages/report.jsp");
			return;
		}

		
		
	}

}
