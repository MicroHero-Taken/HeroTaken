package chat;
import javax.servlet.http.HttpSession;
import javax.websocket.HandshakeResponse;
import javax.websocket.server.*;
public class ChatroomServerConfigurator extends ServerEndpointConfig.Configurator{
	public void modifyHandshake(ServerEndpointConfig sec, HandshakeRequest request, HandshakeResponse response){
		System.out.println(sec+"  "+request+"  "+response);
		sec.getUserProperties().put("username", (String)((HttpSession)request.getHttpSession()).getAttribute("username"));
		System.out.println("22");
		}
	
	
	
}
