package chat;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UserNameServlet")
public class UserNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter printWriter = response.getWriter();
		HttpSession httpSession = request.getSession(true);
		String username = request.getParameter("username");
		httpSession.setAttribute("username", username);
		if(username != null){
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/chatRoom/chat.jsp");
			
//			printWriter.println("<html>");
//			printWriter.println(	"<head><title>MissionChat</title></head>");
//			printWriter.println(	"<body>");
//			printWriter.println(     	"<center>");
//			printWriter.println(			"<mark>UserName: " + username + "</mark><br>");
//			printWriter.println(            "<textarea id=\"messageTextArea\" readonly=\"readonly\" rows=\"30\" cols=\"55\"></textarea>");
//			printWriter.println(            "<textarea id=\"usernameTextArea\" readonly=\"readonly\" rows=\"30\" cols=\"25\"></textarea><br>");
//			printWriter.print(              "<input 	type=\"text\" id=\"messageText\" size=\"75\"   onkeydown = \"if (event.keyCode == 13) document.getElementById('btn').click()\"  />");
//			printWriter.println(            "<input		type=\"button\" id=\"btn\" value=\"Send\" onclick=\"sendMessage()\"   ;/>");
//			printWriter.println(            "<script type=\"text/javascript\">");
//			printWriter.println(            "var websocket = new WebSocket(\"ws://localhost:8080/HeroJDBC/chatroomServerEndpoint\");");
//			printWriter.println(            "websocket.onmessage = function processMessage(message){");
//			printWriter.println(				"var jsonData = JSON.parse(message.data);");
//			printWriter.println(                "if(jsonData.message != null)messageTextArea.value += jsonData.message + \"\\n\" ;");
//			printWriter.println(            "}");
//			printWriter.println(            "function sendMessage(){");
//			printWriter.println(                "websocket.send(messageText.value);");
//			printWriter.println(                "messageText.value = \"\" ;");
//			printWriter.println(            "}");
//			printWriter.println(            "</script>");
//			printWriter.println(     	"</center>");
//			printWriter.println(	"</body>");
//			printWriter.println("</html>");			
		}
	}
}






