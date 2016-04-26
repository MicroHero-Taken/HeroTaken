package _08MissionMem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;



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
		List<MissionMemBean> bean = dao.select();
	}

	// private static final String SELECT_ALL =
	// "select mm.missionNo, m.memberNo, m.nickName, m.gender, m.experience from MissionMem mm  FULL OUTER JOIN Member m ON mm.memberNo = m.memberNo";
	private static final String SELECT_ALL = "SELECT Mission.missionTitle,"
											  + "Mission.missionDesc,"
											  + "Mission.missionPeople,"
											  + "Mission.missionGender,"
											  + "Mission.missionExcuteTime,"
											  + "Mission.missionArea, Mission.address,"
											  + "Mission.missionStrt,"
											  + "Mission.missionEnd,"
											  + "Mission.missionStatusNo, Member.given_name FROM Member INNER JOIN Mission ON Member.memberNo = Mission.memberNo";

	public List<MissionMemBean> select() {
		List<MissionMemBean> result = null;
		try (
//				Connection conn = DriverManager.getConnection(URL, USERNAME,
//				PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement stmt = conn.prepareStatement(SELECT_ALL);) {

			ResultSet rs = stmt.executeQuery();
			result = new ArrayList<MissionMemBean>();
			while (rs.next()) {
				MissionMemBean bean = new MissionMemBean();
//				bean.setMemberNo(rs.getInt("memberNo"));
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
				result.add(bean);
//				 System.out.println(bean);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
