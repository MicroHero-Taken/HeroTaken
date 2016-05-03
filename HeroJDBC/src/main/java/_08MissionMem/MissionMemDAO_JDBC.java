package _08MissionMem;

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

import _01member.MemberBean;



public class MissionMemDAO_JDBC implements MissionMemDAO{
//	private static final String URL = "jdbc:sqlserver://localhost:1433;database=Hero";
//	private static final String USERNAME = "sa";
//	private static final String PASSWORD = "passw0rd";
	
	private DataSource dataSource;
	public MissionMemDAO_JDBC() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		MissionMemDAO_JDBC dao = new MissionMemDAO_JDBC();
		List<MissionMemBean> bean = dao.selectNO_2(1);
		System.out.println(bean);
	}

private static final String SELECT_ALL = "SELECT MissionStatus.missionStatus, Mission.*, Member.given_name"
											+" FROM Member INNER JOIN"
											+" Mission ON Member.memberNo = Mission.memberNo INNER JOIN"
											+" MissionStatus ON Mission.missionStatusNo = MissionStatus.missionStatusNo"
											+" WHERE MissionStatus.missionStatusNo =1";
	@Override
	public List<MissionMemBean> select() {
		List<MissionMemBean> result = null;
		try (
				//Connection conn = DriverManager.getConnection(URL, USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement stmt = conn.prepareStatement(SELECT_ALL);) {

			ResultSet rs = stmt.executeQuery();
			result = new ArrayList<MissionMemBean>();
			while (rs.next()) {
				MissionMemBean bean = new MissionMemBean();
				bean.setMissionNo(rs.getInt("missionNo"));
				bean.setMissionTitle(rs.getString("missionTitle"));
				bean.setMissionDesc(rs.getString("missionDesc"));
				bean.setGiven_name(rs.getString("given_name"));
				bean.setMissionPeople(rs.getInt("missionPeople"));
				bean.setMissionGender(rs.getString("missionGender"));
				bean.setMissionExcuteTime(rs.getTimestamp("missionExcuteTime"));
				bean.setMissionArea(rs.getString("missionArea"));
				bean.setAddress(rs.getString("address"));
				bean.setMissionStrt(rs.getTimestamp("missionStrt"));
				bean.setMissionEnd(rs.getTimestamp("missionEnd"));
				bean.setMissionStatusNo(rs.getInt("missionStatusNo"));
				bean.setMissionStatus(rs.getString("missionStatus"));
				result.add(bean);
//				 System.out.println(bean);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
//	=====================================================================================================
	private static final String SELECT_BY_NO_AND_3 = "SELECT	Mission.*, Member.given_name, MissionStatus.missionStatus"
														+" FROM	Member INNER JOIN"
														+" Mission ON Member.memberNo = Mission.memberNo INNER JOIN"
														+" MissionStatus ON Mission.missionStatusNo = MissionStatus.missionStatusNo"
														+" WHERE Mission.memberNo=? and Mission.missionStatusNo=3"; 
	@Override
	public List<MissionMemBean> selectNO_3(int memberNo){
		List<MissionMemBean> result = null;
		ResultSet rset = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_NO_AND_3);
				){
			pstmt.setInt(1, memberNo);
			rset = pstmt.executeQuery();
			result = new ArrayList<MissionMemBean>();
			while(rset.next()){
				MissionMemBean bean = new MissionMemBean();
				bean.setMissionNo(rset.getInt("missionNo"));
				bean.setMissionTitle(rset.getString("missionTitle"));
				bean.setMissionDesc(rset.getString("missionDesc"));
				bean.setGiven_name(rset.getString("given_name"));
				bean.setMissionPeople(rset.getInt("missionPeople"));
				bean.setMissionGender(rset.getString("missionGender"));
				bean.setMissionExcuteTime(rset.getTimestamp("missionExcuteTime"));
				bean.setMissionArea(rset.getString("missionArea"));
				bean.setAddress(rset.getString("address"));
				bean.setMissionStrt(rset.getTimestamp("missionStrt"));
				bean.setMissionEnd(rset.getTimestamp("missionEnd"));
				bean.setMissionStatusNo(rset.getInt("missionStatusNo"));
				bean.setMissionStatus(rset.getString("missionStatus"));
				result.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
//	=====================================================================================================
	private static final String SELECT_BY_NO_AND_2 = "SELECT	Mission.*, Member.given_name, MissionStatus.missionStatus"
													+" FROM	Member INNER JOIN"
													+" Mission ON Member.memberNo = Mission.memberNo INNER JOIN"
													+" MissionStatus ON Mission.missionStatusNo = MissionStatus.missionStatusNo"
													+" WHERE Mission.memberNo=? and Mission.missionStatusNo=2";

	@Override
	public List<MissionMemBean> selectNO_2(int memberNo) {
		List<MissionMemBean> result = null;
		ResultSet rset = null;
		try (   //Connection conn =DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_NO_AND_2);
				){
			pstmt.setInt(1, memberNo);
			rset = pstmt.executeQuery();
			result = new ArrayList<MissionMemBean>();
			while (rset.next()) {
				MissionMemBean bean = new MissionMemBean();
				bean.setMissionNo(rset.getInt("missionNo"));
				bean.setMissionTitle(rset.getString("missionTitle"));
				bean.setMissionDesc(rset.getString("missionDesc"));
				bean.setGiven_name(rset.getString("given_name"));
				bean.setMissionPeople(rset.getInt("missionPeople"));
				bean.setMissionGender(rset.getString("missionGender"));
				bean.setMissionExcuteTime(rset
						.getTimestamp("missionExcuteTime"));
				bean.setMissionArea(rset.getString("missionArea"));
				bean.setAddress(rset.getString("address"));
				bean.setMissionStrt(rset.getTimestamp("missionStrt"));
				bean.setMissionEnd(rset.getTimestamp("missionEnd"));
				bean.setMissionStatusNo(rset.getInt("missionStatusNo"));
				bean.setMissionStatus(rset.getString("missionStatus"));
				result.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	=====================================================================================================

	private static final String DELETE = "Delete from Mission where missionNo=?";
	
	@Override
	public int delete(int number) {
		int result = 0;

		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = dataSource.getConnection();
			stmt = conn.prepareStatement(DELETE);

			stmt.setInt(1, number);
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	
	
	
}
