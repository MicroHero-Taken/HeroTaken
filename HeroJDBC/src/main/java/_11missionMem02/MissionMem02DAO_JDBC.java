package _11missionMem02;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import _04shop.ShopBean;
import _04shop.ShopDAO;
import _04shop.ShopDAO_JDBC;

public class MissionMem02DAO_JDBC implements MissionMem02DAO {
//	private static final String URL = "jdbc:sqlserver://localhost:1433;database=Hero";
//	private static final String USERNAME = "sa";
//	private static final String PASSWORD = "passw0rd";
	private DataSource dataSource;
	public MissionMem02DAO_JDBC() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
//	=========================================MAIN===============================================================
	public static void main(String[] args){

	}
//	============================================================================================================
	private static final String INSERT = "INSERT INTO MissionMem (missionNo,memberNo) VALUES(?,?);";
	/* (non-Javadoc)
	 * @see _11missionMem02.MissionMem02DAO#insert(_11missionMem02.MissionMemBean02)
	 */
	@Override
	public MissionMemBean02 insert(MissionMemBean02 bean){
		MissionMemBean02 result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(INSERT);
				){
			if(bean != null){
				pstmt.setInt(1, bean.getMissionNo());
				pstmt.setInt(2, bean.getMemberNo());
				pstmt.executeUpdate();
				
				result = new MissionMemBean02();
				result.setMissionNo(bean.getMissionNo());
				result.setMemberNo(bean.getMemberNo());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
}
