package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLData;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import _01member.MemberBean;
import _05mission.MissionBean;
import _05mission.MissionService;
import _07missionReward.MissionRewardBean;
import _07missionReward.MissionRewardService;
import _08MissionMem.MissionMemBean;
import _08MissionMem.MissionMemService;
import _init.GlobalService;
@WebServlet("/search.do")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MissionMemService missionMemService = new MissionMemService();
    public SearchServlet() {

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		//當前會員
		HttpSession httpSession = request.getSession();
		MemberBean bean = (MemberBean)httpSession.getAttribute("Login");
		int memberNo = bean.getMemberNo();
		
		List<MissionMemBean> beans3 = missionMemService.slectNO_3(memberNo);
		List<MissionMemBean> beans2 = missionMemService.slectNO_2(memberNo);
		
		System.out.println("beans1= " +beans3);
		System.out.println("beans2= " +beans2);
		HttpSession session1 = request.getSession();
		session1.setAttribute("mission2", beans2);
		HttpSession session2 = request.getSession();
		session2.setAttribute("mission3", beans3);
		
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/pages/search.jsp");
	}
}
