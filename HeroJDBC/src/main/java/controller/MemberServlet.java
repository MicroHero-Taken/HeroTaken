package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _01member.MemberBean;
import _01member.MemberDAOjdbc;

@WebServlet("/register/Register.do")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//測試程式
//		RegisterDAOJDBC dao1 = new RegisterDAOJDBC();
//		CustomerBean bean1 = dao1.select("01");		
//		System.out.println(bean1);
		
				Map<String, String> errorMsg = new HashMap<String, String>();
				Map<String, String> msgOK = new HashMap<String, String>();				
				HttpSession session = request.getSession();
		        request.setAttribute("error", errorMsg); 
		        		        
		        String email = request.getParameter("email");
		        System.out.println(email);
		        if(email == null || email.trim().length()==0) {		        	
		        	errorMsg.put("email","不可空白");		
		        }
		        
		        String password = request.getParameter("password");
		        System.out.println(password);
		        if(password==null || password.trim().length()==0) {
		        	errorMsg.put("password", "不可空白");		        
		        } 
		        
		        String memberName = request.getParameter("memberName");
		        if(memberName==null || memberName.trim().length()==0) {
		        	errorMsg.put("memberName", "不可空白");     	
		        }
		        
		        String family_name = request.getParameter("family_name");
		        if(family_name==null || family_name.trim().length()==0) {
		        	errorMsg.put("family_name", "不可空白");     	
		        }
		        
		        String given_name = request.getParameter("given_name");
		        if(given_name==null || given_name.trim().length()==0) {
		        	errorMsg.put("given_name", "不可空白");     	
		        }
		        
		        String gender = request.getParameter("gender");
		        if(gender==null || gender.trim().length()==0) {
		        	errorMsg.put("gender", "不可空白");     	
		        }
		       
		       
		        String id = request.getParameter("id");
		        if(id==null || id.trim().length()==0) {
		        	errorMsg.put("id", "不可空白");		        
		        }  
		        String phone = request.getParameter("phone");
		        if(phone==null || id.trim().length()==0) {
		        	errorMsg.put("phone", "不可空白");		        
		        }  
		        String temp2 = request.getParameter("birthday");
		        if(temp2 ==null || temp2.trim().length()==0) {
		        	errorMsg.put("birthday", "不可空白");		        
		        } 
		    // int phone = 0;
			//if(phone1!=null && phone1.trim().length()!=0) {
			//try {
			//phone = Integer.parseInt(phone1.trim());
			//} catch (NumberFormatException e) {
			//e.printStackTrace();
		    //errorMsg.put("phone", "電話號碼必須是整數");
		    //}
			//}
		      
				java.sql.Timestamp birthday  = null;
					if(temp2!=null && temp2.trim().length()!=0) {
						try {
							birthday =  Timestamp.valueOf(temp2+" 00:00:00.000");
						} catch (Exception e) {
							e.printStackTrace();
							errorMsg.put("birthday", "出生日期必須是yyyy-mm-dd");
						}
					}
			      
			        
		       
		        
		        // 如果有錯誤，呼叫view元件，送回錯誤訊息
		        if(!errorMsg.isEmpty()) { 	
		        	RequestDispatcher rd = request.getRequestDispatcher("/secure/login.jsp");
		        	rd.forward(request, response);
		        	return;
		        }
		        	
		        MemberBean bean= new MemberBean();
		        //System.out.println("this is bean" + bean);
	//	        try { 
		        	bean.setEmail(email);
		        	bean.setPassword(password);
		        	bean.setMemberName(memberName);
		        	bean.setFamily_name(family_name);
		        	bean.setGiven_name(given_name);
		        	bean.setGender(gender);
		        	bean.setId(id);
		        	bean.setPhone(phone);
		        	bean.setRating(1);
		        	bean.setExperience(0);
		        	bean.setCoin(0);
		        	bean.setBirthday(birthday);
		        	bean.setMemberStatusNo(2);
				MemberDAOjdbc dao = new MemberDAOjdbc();
				try {
					MemberBean a = dao.insertMember(bean);
					
					if(a==null) {
						errorMsg.put("password", "登入失敗，請再次輸入ID/PWD");
						request.getRequestDispatcher(
								"/secure/login.jsp").forward(request, response);
					} else {
						HttpSession session2 = request.getSession();
						session2.setAttribute("user", bean);
						String path = request.getContextPath();
						response.sendRedirect(path+"/index1.jsp");
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
//					request.setAttribute("MemberBean", bean);
//					String path = request.getContextPath();
//					response.sendRedirect(path+"/index.jsp");
//				
//					RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
//					rd.forward(request, response);
//					return;
//				} catch (Exception e) {
//					if (e.getMessage().indexOf("重複的索引鍵") != -1 || 
//							e.getMessage().indexOf("Duplicate entry") != -1) {
//							errorMsg.put("memberAccount","帳號重複，請重新輸入帳號");
//						} else {
//							errorMsg.put("memberAccount","資料庫存取錯誤:" + e.getMessage());
//						}
//						RequestDispatcher rd = request
//							.getRequestDispatcher("/register.jsp");
//						rd.forward(request, response);
//						return;
//					}
			}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doPost(request, response);		
	}
	
}