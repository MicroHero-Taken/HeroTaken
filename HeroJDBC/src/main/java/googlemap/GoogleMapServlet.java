package googlemap;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet("/googlemap/GoogleMapServlet")
public class GoogleMapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");
	
		//轉換為JSON格式
		System.out.println("Google Map JSON Servlet - Start");		
		GoogleMap_DAO dao =new GoogleMap_DAO();
		List<GoogleMapBean> list=dao.select();
		PrintWriter out = response.getWriter();
		JSONArray array = new JSONArray();
		String contextPath=request.getContextPath();
		for(int i=0;i<list.size();i++){
			JSONObject obj=new JSONObject();
			obj.put("MissionNo",list.get(i).getMissionNo());
			obj.put("MissionTitle",list.get(i).getMissionTitle());
			obj.put("MemberName",list.get(i).getMemberName());
			obj.put("MissionPeople",list.get(i).getMissionPeople());
			obj.put("MissionGender",list.get(i).getMissionGender());
			obj.put("MissionStrt",list.get(i).getMissionStrt());
			obj.put("MissionEnd",list.get(i).getMissionEnd());
			obj.put("MissionDesc",list.get(i).getMissionDesc());
			obj.put("Latitude",list.get(i).getLatitude());
			obj.put("Longitude",list.get(i).getLongitude());
			obj.put("MissionStatusNo",list.get(i).getMissionStatusNo());
			obj.put("icon",contextPath+"/HeroPhotoSkin3?heroNo="+list.get(i).getMemberHeroStatus());
			array.put(obj);	
		}
		out.println(array.toString());
		out.flush();
		out.close();
	}
}