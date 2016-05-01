package googlemap;

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

public class GoogleMap_DAO {

	DataSource ds = null;

	public GoogleMap_DAO() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String SELECT_ACTIVE_MISSION = "SELECT Mission.missionNo, Mission.missionTitle, Member.memberName, Mission.missionPeople, Mission.missionGender,Mission.missionStrt, Mission.missionEnd, Mission.missionDesc, Mission.latitude, Mission.longitude,Mission.missionStatusNo, Member.memberHeroStatus FROM Member INNER JOIN Mission ON Member.memberNo = Mission.memberNo WHERE Mission.missionStatusNo=1";
	public List<GoogleMapBean> select() {
		System.out.println("Google Map Select DAO   - Start");
		 List<GoogleMapBean> result = null;
		try (
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_ACTIVE_MISSION);
				ResultSet rset = pstmt.executeQuery();) {
			result = new ArrayList<GoogleMapBean>();
			while (rset.next()) {
				GoogleMapBean bean =new GoogleMapBean();
				bean.setMissionNo(rset.getInt("missionNo"));
				bean.setMissionTitle(rset.getString("missionTitle"));
				bean.setMemberName(rset.getString("memberName"));
				bean.setMissionPeople(rset.getInt("missionPeople"));
				bean.setMissionGender(rset.getString("missionGender"));
				bean.setMissionStrt(rset.getDate("missionStrt"));
				bean.setMissionEnd(rset.getDate("missionEnd"));
				bean.setMissionDesc(rset.getString("missionDesc"));
				bean.setLatitude(rset.getString("latitude"));
				bean.setLongitude(rset.getString("longitude"));
				bean.setMissionStatusNo(rset.getInt("missionStatusNo"));
				bean.setMemberHeroStatus(rset.getInt("memberHeroStatus"));
				result.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}