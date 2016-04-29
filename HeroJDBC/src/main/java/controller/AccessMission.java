package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _05mission.MissionBean;
import _05mission.MissionService;

@WebServlet("/AccessMission")
public class AccessMission extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String noStr = request.getParameter("no");
		int no = 0;
		if(noStr != null && noStr.trim().length() != 0){
			no = Integer.parseInt(noStr);
		}
		System.out.println("Access-no: " +no);
		MissionBean missionBean = new MissionBean();
		MissionService missionService = new MissionService();
		missionBean = missionService.selectByNo(no);
		System.out.println("ACC-missionBean= " +missionBean);
		HttpSession session = request.getSession();
		session.setAttribute("mission",missionBean);
		
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/temporary.jsp");

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doGet(request, response);
	}

}
