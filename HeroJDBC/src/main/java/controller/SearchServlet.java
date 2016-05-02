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
	private MissionService missionService =new MissionService();
    public SearchServlet() {

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		Map<String , String> errorMsgs = new HashMap<>();
		request.setAttribute("ErrMsg", errorMsgs);
		
		MissionBean bean = new MissionBean();
		MissionService missionService = new MissionService();
		List<MissionBean> result = missionService.selectByName(bean);
				
		HttpSession session = request.getSession();
		session.setAttribute("search",bean);
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/search.jsp");
		return;
			}
}
