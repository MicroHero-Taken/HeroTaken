package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.sql.DataSource;

@WebServlet(
		urlPatterns={"/photo.view"},
		initParams={
				@WebInitParam(name="defaultFile", value="/images/NG.png")
		}
)
public class RewardPhotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private File defaultPhoto;
	@Override
	public void init() throws ServletException {
		String defaultFile = this.getInitParameter("defaultFile");
		ServletContext application = this.getServletContext();
		String path = application.getRealPath(defaultFile);
		defaultPhoto = new File(path);
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String missionNoStr = request.getParameter("missionNo");
		int missionNo = 0;
		if(missionNoStr != null && missionNoStr.trim().length() != 0){
			try {
				missionNo = Integer.parseInt(missionNoStr);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
		
		InputStream is =null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			Context ctx = new InitialContext();
			DataSource dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/xxx");
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM MissionReward WHERE missionNo = ?");
			pstmt.setInt(1, missionNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				is = rset.getBinaryStream("gift");
			}else{
				is = new FileInputStream(defaultPhoto);
			}
			
			response.setContentType("image/png");
			OutputStream os = response.getOutputStream();
			byte[] b = new byte[4*1024];
			int len = is.read(b);
			while(len != -1){
				os.write(b,0,len);
				len = is.read(b);
			}
			os.close();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally{
			if(is != null){
				is.close();
			}
			if(rset != null){
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
