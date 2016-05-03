package _08MissionMem;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/missionMemDelete.do")
public class MissionDeleteServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int number=Integer.parseInt(req.getParameter("deleteNo"));
		MissionMemService missionMemService =new MissionMemService();
		missionMemService.delete(number);
		List<MissionMemBean> missionBeans = missionMemService.select();
		req.setAttribute("mission", missionBeans);
		
		
		
		
		req.getRequestDispatcher(
				"/pages/backend.jsp").forward(req, resp);

	}

}
