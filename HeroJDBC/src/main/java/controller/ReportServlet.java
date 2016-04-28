package controller;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import _09report.ReportBean;
import _09report.ReportService;

@WebServlet("/Report.do")
public class ReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
				Map<String, String> error = new HashMap<String, String>();
				Map<String, String> msgOK = new HashMap<String, String>();				
		        request.setAttribute("error", error); 
		        
		        try {
					String email = "";
					String detail = "";
					
					Collection<Part> parts = request.getParts();
					for(Part p : parts){
						String fldName = p.getName();
						String value = request.getParameter(fldName);
						if(p.getContentType() == null){
							if(fldName.equals("email")){
								email = value;
								if(value == null || detail.trim().length() == 0){
									error.put("errEmail","Email不能空白");
								request.setAttribute("email",email);
							}else if(fldName.equals("detail")){
								detail = value ;
								if(value == null || detail.trim().length() == 0){
									error.put("errDetail","回報內容不能空白");
								}else{
									request.setAttribute("detail", detail);
								}
							}
							}
						}
						if(! error.isEmpty()){  
							RequestDispatcher rd = request.getRequestDispatcher("/pages/mission.jsp");
							rd.forward(request, response);
							return;
						}else{
						ReportBean reportBean = new ReportBean(email,detail);
						ReportService reportService = new ReportService();
						ReportBean rbean = reportService.insert(reportBean);
						
						
						reportBean.setEmail(email);
						reportBean.setDetail(detail);
      
					HttpSession session = request.getSession();
					session.setAttribute("report", reportBean);
					
//					String path = request.getContextPath();
//					response.sendRedirect(path+"/report.jsp");
					}
					}
				} catch (Exception e) {
					RequestDispatcher rd = request.getRequestDispatcher("pages/report.jsp");
					rd.forward(request, response);
				}
	}
	// 呼叫Model

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		this.doPost(request, response);
	}

}