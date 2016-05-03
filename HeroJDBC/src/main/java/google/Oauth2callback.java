package google;

import javax.servlet.annotation.WebServlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _01member.MemberBean;
import _01member.MemberService;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;



@WebServlet("/Oauth2callback")
public class Oauth2callback extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Oauth2callback() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // get code
            String code = request.getParameter("code");
            // format parameters to post
            String urlParameters = "code="
                    + code
                    + "&client_id=741121189982-cn68b2b4e01pshdlr0pr782sref0ucia.apps.googleusercontent.com"
                    + "&client_secret=S5IXrayRiaCEHuNjgl90t5Bo"
                    + "&redirect_uri=http://eeit84taken.cloudapp.net:8080/HeroJDBC/Oauth2callback"
                    + "&grant_type=authorization_code";
            
            //post parameters
            URL url = new URL("https://accounts.google.com/o/oauth2/token");
            URLConnection urlConn = url.openConnection();
            urlConn.setDoOutput(true);
            OutputStreamWriter writer = new OutputStreamWriter(
                    urlConn.getOutputStream());
            writer.write(urlParameters);
            writer.flush();
            
            //get output in outputString 
            String line, outputString = "";
            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    urlConn.getInputStream()));
            while ((line = reader.readLine()) != null) {
                outputString += line;
            }
            System.out.println("outputString= " + outputString);
            
            //get Access Token 
            JsonObject json = (JsonObject)new JsonParser().parse(outputString);
            String access_token = json.get("access_token").getAsString();
            System.out.println("access_token= " + access_token);

            //get User Info 
            url = new URL(
                    "https://www.googleapis.com/oauth2/v1/userinfo?access_token="
                            + access_token);
            urlConn = url.openConnection();
            outputString = "";
            reader = new BufferedReader(new InputStreamReader(
                    urlConn.getInputStream()));
            while ((line = reader.readLine()) != null) {
                outputString += line;
            }
            System.out.println("outputString= " + outputString);
            
            // Convert JSON response into Pojo class
            GooglePojo data = new Gson().fromJson(outputString, GooglePojo.class);
            System.out.println("data= " + data);
            System.out.println(data.id);
            System.out.println(data.name);
            System.out.println(data.given_name);
            System.out.println(data.family_name);
            System.out.println(data.email);
            writer.close();
            reader.close();
            
            //判斷是否已經註冊過本網站
            MemberService service = new MemberService();
            String memberName = data.name;
            String family_name = data.family_name;
            String given_name = data.given_name;
            String email = data.email;
            
            MemberBean google = new MemberBean(memberName,family_name,given_name,email);
            MemberBean select = service.googleLogin(email);
            if(select == null){
            	MemberBean insert = service.googleInsert(google);
            }
            MemberBean select2 = service.googleLogin(email);
            HttpSession session = request.getSession();
            session.setAttribute("user", select2);
            
//          -------------------------查詢google登入的使用者金錢/評價/名子等--------------------------------
            MemberBean LoginBean = service.selectByEmail(email);
            HttpSession sessionLogin =request.getSession();
			sessionLogin.setAttribute("Login", LoginBean);
			
			HttpSession sessionChatName = request.getSession();
			sessionChatName.setAttribute("username", memberName);
            
            String contextPath = request.getContextPath();
            response.sendRedirect(contextPath + "/index1.jsp");
  
        } catch (MalformedURLException e) {
        	RequestDispatcher rd = request.getRequestDispatcher("/secure/login.jsp");
        	rd.forward(request, response);
            System.out.println( e);
        } catch (ProtocolException e) {
        	RequestDispatcher rd = request.getRequestDispatcher("/secure/login.jsp");
        	rd.forward(request, response);
            System.out.println( e);
        } catch (IOException e) {
        	RequestDispatcher rd = request.getRequestDispatcher("/secure/login.jsp");
        	rd.forward(request, response);
            System.out.println( e);
        }
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
