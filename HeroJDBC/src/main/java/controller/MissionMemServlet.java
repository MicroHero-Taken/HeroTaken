package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MissionMemBean;
import model.MissionMemService;
@WebServlet("/missionMem.do")
public class MissionMemServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private MissionMemService missionMemService;
	public MissionMemServlet(){
		
		
	}
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		String memberNo = request.getParameter("memberNo");
//		String missionTitle = request.getParameter("missionTitle");
//		String missionDesc = request.getParameter("missionDesc");
//		String missionPeople = request.getParameter("missionPeople");
//		String missionGender = request.getParameter("missionGender");
//		String missionExcuteTime = request.getParameter("missionExcuteTime");
//		String missionArea = request.getParameter("missionArea");
//		String address = request.getParameter("address");
//		String missionStrt = request.getParameter("missionStrt");
//		String missionEnd = request.getParameter("missionEnd");
//		String missionStatusNo = request.getParameter("missionStatusNo");
		
//		Integer memberNo1 = Integer.parseInt(memberNo);
//		Integer missionPeople1 = Integer.parseInt(missionPeople);
//		java.sql.Timestamp missionExcuteTime1 = null;
//		java.sql.Timestamp missionStrt1 = null;
//		java.sql.Timestamp missionEnd1 = null;
//		Integer missionStatusNo1 = Integer.parseInt(missionStatusNo);
//		
		MissionMemBean bean = new MissionMemBean();
		missionMemService=new MissionMemService();
		
		List<MissionMemBean> result = missionMemService.select();
//		bean.setMemberNo(memberNo1);
//		bean.setMissionTitle(missionTitle);
//		bean.setMissionDesc(missionDesc);
//		bean.setMissionPeople(missionPeople1);
//		bean.setMissionGender(missionGender);
//		bean.setMissionExcuteTime(missionExcuteTime1);
//		bean.setMissionArea(missionArea);
//		bean.setAddress(address);
//		bean.setMissionStrt(missionStrt1);
//		bean.setMissionEnd(missionEnd1);
//		bean.setMissionStatusNo(missionStatusNo1);
		//System.out.println("hahahaha");
		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("beans", result);
			System.out.println("result"+result.size());
			request.getRequestDispatcher(
					"/search.jsp").forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
}