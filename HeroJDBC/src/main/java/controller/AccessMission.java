package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _01member.MemberBean;
import _05mission.MissionBean;
import _05mission.MissionService;
import _11missionMem02.MissionMem02Service;
import _11missionMem02.MissionMemBean02;

@WebServlet("/AccessMission")
public class AccessMission extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String noStr = request.getParameter("missionNo");
		int missionNo = 0;
		if(noStr != null && noStr.trim().length() != 0){
			missionNo = Integer.parseInt(noStr);
		}
		System.out.println("Access-no: " +missionNo);
		MissionBean missionBean = new MissionBean();
		MissionService missionService = new MissionService();
		missionBean = missionService.selectByNo(missionNo);

		//System.out.println("ACC-missionBean= " +missionBean);
		
		//當前會員
		HttpSession httpSession = request.getSession();
		MemberBean bean = (MemberBean)httpSession.getAttribute("Login");
		int memberNo = bean.getMemberNo();
		//新增至missionMem
		MissionMem02Service missionMem02Service = new MissionMem02Service();
		MissionMemBean02 missionMemBean02 = new MissionMemBean02(missionNo,memberNo);
		missionMem02Service.insert(missionMemBean02);
		//更改任務狀態為"執行中"
		MissionBean missionBean2 = new MissionBean(missionNo,2);
		missionService.updateStatus(missionBean2);
		
		
		HttpSession session = request.getSession();
		session.setAttribute("mission",missionBean);
		
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/temporary.jsp");
	}

}
