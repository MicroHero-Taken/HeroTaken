package _08MissionMem;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/missionMem.do")
public class MissionMemServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private MissionMemService missionMemService =new MissionMemService();
	public MissionMemServlet(){
		
		
	}
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MissionMemBean bean = new MissionMemBean();
		List<MissionMemBean> result = missionMemService.select();

		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("beans", result);
			request.getRequestDispatcher(
					"/pages/accessMission.jsp").forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
}