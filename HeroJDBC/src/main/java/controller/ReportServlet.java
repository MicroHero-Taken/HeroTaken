//package controller;
//
//import java.io.IOException;
//import java.util.Collection;
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.naming.NamingException;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import javax.servlet.http.Part;
//
//import org.apache.catalina.Session;
//
//import _01member.MemberBean;
//import _09report.ReportBean;
//import _09report.ReportDAO_JDBC;
//import _09report.ReportService;
//
//@WebServlet("/Report.do")
//public class ReportServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	protected void doPost(HttpServletRequest request,
//			HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//
//		Map<String, String> error = new HashMap<String, String>();
////		Map<String, String> msgOK = new HashMap<String, String>();
//		request.setAttribute("error", error);
//		HttpSession session = request.getSession();
//		Integer memberNo = ((MemberBean) session.getAttribute("user"))
//				.getMemberNo();
//		try {
//			
//			String email = request.getParameter("email");
//			String detail = request.getParameter("detail");
//			
//	        System.out.println(email);
//	        if(email == null || email.trim().length()==0) {		        	
//	        	error.put("email","不可空白");		
//	        }
//	        
//	        System.out.println(detail);
//	        if(detail == null || detail.trim().length()==0) {		        	
//	        	error.put("detail","不可空白");		
//	        }
//				if (!error.isEmpty()) {
//					RequestDispatcher rd = request
//							.getRequestDispatcher("/pages/mission.jsp");
//					rd.forward(request, response);
//					return;
//				} else {
//					// ReportBean reportBean = new ReportBean(email,detail);
//					ReportBean reportBean = new ReportBean();
//					reportBean.setMemberNo(memberNo);
//					reportBean.setEmail(email);
//					reportBean.setDetail(detail);
//					ReportDAO_JDBC reportService = new ReportDAO_JDBC();
//					ReportBean rbean = reportService.insert(reportBean);
//
//					session.setAttribute("report", rbean);
//
//					// String path = request.getContextPath();
//					// response.sendRedirect(path+"/report.jsp");
//				}
//			}
//		} catch (Exception e) {
//			RequestDispatcher rd = request.getRequestDispatcher("pages/report.jsp");
//			rd.forward(request, response);
//		}
//	}
//
//	// 呼叫Model
//
//	protected void doGet(HttpServletRequest request,
//			HttpServletResponse response) throws ServletException, IOException {
//
//		this.doPost(request, response);
//	}
//
//}