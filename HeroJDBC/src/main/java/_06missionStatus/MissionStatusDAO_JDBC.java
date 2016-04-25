package _06missionStatus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MissionStatusDAO_JDBC {
//	private static final String URL = "jdbc:sqlserver://localhost:1433;database=Hero";
//	private static final String USERNAME = "sa";
//	private static final String PASSWORD = "passw0rd";
	
	private DataSource dataSource;
	public MissionStatusDAO_JDBC() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
//	=========================================MAIN===============================================================
	public static void main(String[] args){
		MissionStatusDAO_JDBC dao = new MissionStatusDAO_JDBC();
		List<MissionStatusBean> beans = dao.select();
		System.out.println(beans);
	}
//	============================================================================================================
	private static final String SELECT_ALL = "select * from MissionStatus";
	public List<MissionStatusBean> select(){
		List<MissionStatusBean> result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_ALL);	
				ResultSet rset = pstmt.executeQuery();
				){
			
			result = new ArrayList<MissionStatusBean>();
			while(rset.next()){
				MissionStatusBean bean = new MissionStatusBean();
				bean.setMissionStatusNo(rset.getInt("missionStatusNo"));
				bean.setMissionStatus(rset.getString("missionStatus"));
				result.add(bean);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;	
	}
//	----------------------------------------------------------------------------------------------------------

	
	
}
