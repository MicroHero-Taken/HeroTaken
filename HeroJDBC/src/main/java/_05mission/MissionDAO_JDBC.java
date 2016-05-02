package _05mission;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import _08MissionMem.MissionMemBean;
import _08MissionMem.MissionMemDAO_JDBC;



public class MissionDAO_JDBC implements MissionDAO {
//	private static final String URL = "jdbc:sqlserver://localhost:1433;database=Hero";
//	private static final String USERNAME = "sa";
//	private static final String PASSWORD = "passw0rd";
	
	private DataSource dataSource;
	public MissionDAO_JDBC() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
//	=========================================MAIN===============================================================
public static void main(String[] args){
	MissionDAO dao = new MissionDAO_JDBC();
	List<MissionBean> beans = dao.select();
//	System.out.println(beans);
	
	List<MissionBean> beans2 = dao.selectName("Zack");
//	System.out.println(beans2);
	
	List<MissionBean> beans3 = dao.selectArea("台北市大安區");
//	System.out.println(beans3);
	MissionBean beanssss=dao.selectByMD("摳尼基挖!");
//	System.out.println(beanssss);
	
	List<MissionBean> bean4 = dao.selectName1("caca");
	
//	MissionBean bean = new MissionBean();
//	bean.setMemberNo(3);
//	bean.setMissionTitle("aaa");
//	bean.setMissionDesc("aaa");
//	bean.setMissionPeople(1);
//	bean.setMissionGender("s");
//	bean.setMissionExcuteTime(null);
//	bean.setMissionArea("台北市松山區");
//	bean.setAddress("aaa");
////	bean.setMissionStrt(null);//此行可不用寫
//	bean.setMissionEnd(null);
//	dao.insert(bean);
//	System.err.println("success");System.out.println();
	
//	dao.delete(10);
	
//	dao.update(2," ", " ", 10," ",null, " ", " ",10);
	
	
}
	
//	============================================================================================================
	private static final String SELECT_ALL = 
			"SELECT Mission.*, MissionStatus.missionStatus, Member.memberNo AS Expr1, MissionReward.fileName, MissionReward.gift, MissionReward.describe, MissionReward.rewardCoin"
					+" FROM	Member INNER JOIN"
					+" Mission ON Member.memberNo = Mission.memberNo INNER JOIN"
					+" MissionReward ON Mission.missionNo = MissionReward.missionNo INNER JOIN"
					+" MissionStatus ON Mission.missionStatusNo = MissionStatus.missionStatusNo"; 
	@Override
	public List<MissionBean> select(){
		List<MissionBean> result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_ALL);
				ResultSet rset = pstmt.executeQuery();
				){
			result = new ArrayList<MissionBean>();
			while(rset.next()){
				MissionBean bean = new MissionBean();
				bean.setMissionNo(rset.getInt("missionNo"));
				bean.setMemberNo(rset.getInt("memberNo"));
				bean.setMissionTitle(rset.getString("missionTitle"));
				bean.setMissionDesc(rset.getString("missionDesc"));
				bean.setGift(rset.getBytes("gift"));
				bean.setDescribe(rset.getString("describe"));
				bean.setRewardCoin(rset.getInt("rewardCoin"));
				bean.setMissionPeople(rset.getInt("missionPeople"));
				bean.setMissionGender(rset.getString("missionGender"));
				bean.setMissionExcuteTime(rset.getString("missionExcuteTime"));
				bean.setMissionArea(rset.getString("missionArea"));
				bean.setAddress(rset.getString("address"));
				bean.setMissionStrt(rset.getDate("missionStrt"));
				bean.setMissionEnd(rset.getDate("missionEnd"));
				bean.setMissionStatus(rset.getString("missionStatus"));
				bean.setLatitude(rset.getString("latitude"));
				bean.setLongitude(rset.getString("longitude"));
				
				result.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String SELECT_BY_NO = "SELECT Mission.*, MissionReward.gift, MissionReward.describe, MissionReward.rewardCoin," 
											+" MissionStatus.missionStatus"
											+" FROM Mission INNER JOIN"
											+" MissionReward ON Mission.missionNo = MissionReward.missionNo INNER JOIN"
											+" MissionStatus ON Mission.missionStatusNo = MissionStatus.missionStatusNo"
											+" WHERE Mission.missionNo = ?";
	@Override
	public MissionBean selectNo(int missionNo){
		MissionBean result = null;
		ResultSet rset = null;
		try (	//Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_NO);
				){
			pstmt.setInt(1, missionNo);
			rset = pstmt.executeQuery();
			if(rset.next()){
				result = new MissionBean();
				result.setMissionNo(rset.getInt("missionNo"));
				result.setMemberNo(rset.getInt("memberNo"));
				result.setMissionTitle(rset.getString("missionTitle"));
				result.setMissionDesc(rset.getString("missionDesc"));
				result.setGift(rset.getBytes("gift"));
				result.setDescribe(rset.getString("describe"));
				result.setRewardCoin(rset.getInt("rewardCoin"));
				result.setMissionPeople(rset.getInt("missionPeople"));
				result.setMissionGender(rset.getString("missionGender"));
				result.setMissionExcuteTime(rset.getString("missionExcuteTime"));
				result.setMissionArea(rset.getString("missionArea"));
				result.setAddress(rset.getString("address"));
				result.setMissionStrt(rset.getDate("missionStrt"));
				result.setMissionEnd(rset.getDate("missionEnd"));
				result.setMissionStatus(rset.getString("missionStatus"));
				result.setLatitude(rset.getString("latitude"));
				result.setLongitude(rset.getString("longitude"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(rset!=null){
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String SELECT_BY_NAME = "SELECT Mission.*, MissionStatus.missionStatus, MissionReward.fileName, MissionReward.gift, MissionReward.describe,  MissionReward.rewardCoin, Member.memberNo AS Expr1, Member.memberName"
			+" FROM Member INNER JOIN"
			+" Mission ON Member.memberNo = Mission.memberNo INNER JOIN"
			+" MissionReward ON Mission.missionNo = MissionReward.missionNo INNER JOIN"
			+" MissionStatus ON Mission.missionStatusNo = MissionStatus.missionStatusNo"
			+" WHERE memberName = ?;";
	@Override
	public List<MissionBean> selectName(String memberName){
		List<MissionBean> result = null;
		ResultSet rset = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_NAME);
				){
			pstmt.setString(1, memberName);
			rset = pstmt.executeQuery();
			
			result = new ArrayList<MissionBean>();
			while(rset.next()){
				MissionBean bean = new MissionBean();
				bean.setMissionNo(rset.getInt("missionNo"));
				bean.setMemberName(rset.getString("memberName"));
				bean.setMissionTitle(rset.getString("missionTitle"));
				bean.setMissionDesc(rset.getString("missionDesc"));
				bean.setGift(rset.getBytes("gift"));
				bean.setDescribe(rset.getString("describe"));
				bean.setRewardCoin(rset.getInt("rewardCoin"));
				bean.setMissionPeople(rset.getInt("missionPeople"));
				bean.setMissionGender(rset.getString("missionGender"));
				bean.setMissionExcuteTime(rset.getString("missionExcuteTime"));
				bean.setMissionArea(rset.getString("missionArea"));
				bean.setAddress(rset.getString("address"));
				bean.setMissionStrt(rset.getDate("missionStrt"));
				bean.setMissionEnd(rset.getDate("missionEnd"));
				bean.setMissionStatus(rset.getString("missionStatus"));
				bean.setLatitude(rset.getString("latitude"));
				bean.setLongitude(rset.getString("longitude"));
				result.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(rset!=null){
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String SELECT_BY_NAME1 = "SELECT Member.memberName, Mission.missionTitle, Mission.missionDesc, Mission.missionPeople, Mission.missionStrt, Mission.missionExcuteTime, Mission.address, MissionStatus.missionStatus"
			+ " FROM Member INNER JOIN Mission ON Member.memberNo = Mission.memberNo"
			+ " INNER JOIN MissionStatus ON Mission.missionStatusNo = MissionStatus.missionStatusNo"
			+ " WHERE memberName = ?;";

	public List<MissionBean> selectName1(String memberName){
		List<MissionBean> result = null;
		ResultSet rset = null;
		try(
//				Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_NAME1)
				){
		
		pstmt.setString(1, memberName);
		rset = pstmt.executeQuery();
		result = new ArrayList<MissionBean>();
		while(rset.next()){
			MissionBean bean = new MissionBean();
			bean.setMemberName(rset.getString("memberName"));
			bean.setMissionTitle(rset.getString("missionTitle"));
			bean.setMissionDesc(rset.getString("missionDesc"));
			bean.setMissionPeople(rset.getInt("missionPeople"));
			bean.setMissionStrt(rset.getDate("missionStrt"));
			bean.setMissionExcuteTime(rset.getString("missionExcuteTime"));
			bean.setAddress(rset.getString("address"));
			bean.setMissionStatus(rset.getString("missionStatus"));
//			bean.setGift(rset.getBytes("gift"));
//			bean.setRewardCoin(rset.getInt("rewardCoin"));
			result.add(bean);
//			System.out.println(bean);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if (rset!=null){
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String SELECT_BY_AREA = "SELECT Mission.*, MissionStatus.missionStatus, MissionReward.fileName, MissionReward.gift, MissionReward.describe,  MissionReward.rewardCoin, Member.memberNo AS Expr1, Member.memberName"
			+" FROM Member INNER JOIN"
			+" Mission ON Member.memberNo = Mission.memberNo INNER JOIN"
			+" MissionReward ON Mission.missionNo = MissionReward.missionNo INNER JOIN"
			+" MissionStatus ON Mission.missionStatusNo = MissionStatus.missionStatusNo"
			+" WHERE missionArea = ?;";
	@Override
	public List<MissionBean> selectArea(String missionArea){
		List<MissionBean> result = null;
		ResultSet rset = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_AREA);
				){
			pstmt.setString(1, missionArea);
			rset = pstmt.executeQuery();
			
			result =new ArrayList<MissionBean>();
			while(rset.next()){
				MissionBean bean = new MissionBean();
				bean.setMissionNo(rset.getInt("missionNo"));
				bean.setMemberName(rset.getString("memberName"));
				bean.setMissionTitle(rset.getString("missionTitle"));
				bean.setMissionDesc(rset.getString("missionDesc"));
				bean.setGift(rset.getBytes("gift"));
				bean.setDescribe(rset.getString("describe"));
				bean.setRewardCoin(rset.getInt("rewardCoin"));
				bean.setMissionPeople(rset.getInt("missionPeople"));
				bean.setMissionGender(rset.getString("missionGender"));
				bean.setMissionExcuteTime(rset.getString("missionExcuteTime"));
				bean.setMissionArea(rset.getString("missionArea"));
				bean.setAddress(rset.getString("address"));
				bean.setMissionStrt(rset.getDate("missionStrt"));
				bean.setMissionEnd(rset.getDate("missionEnd"));
				bean.setMissionStatus(rset.getString("missionStatus"));
				bean.setLatitude(rset.getString("latitude"));
				bean.setLongitude(rset.getString("longitude"));
				result.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rset!=null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String SELECT_BY_MD = "SELECT * FROM Mission WHERE missionDesc = ? ";
	@Override
	public MissionBean selectByMD(String missionDesc){
		MissionBean result = null;
		ResultSet rset = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_MD);
				){
			pstmt.setString(1, missionDesc);
			rset = pstmt.executeQuery();
			if(rset.next()){
				result = new MissionBean();
				result.setMissionNo(rset.getInt("missionNo"));
				result.setMissionDesc(rset.getString("missionDesc"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rset!=null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result ;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String INSERT ="INSERT INTO Mission(memberNo,missionTitle,missionDesc,missionPeople,missionGender,missionExcuteTime,missionArea,address,missionStrt,missionEnd,latitude,longitude) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);";
	@Override
	public MissionBean insert(MissionBean bean){
		MissionBean result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt =conn.prepareStatement(INSERT);
				){
			if(bean != null){
				result =new MissionBean();
				pstmt.setInt(1, bean.getMemberNo());
				pstmt.setString(2, bean.getMissionTitle());
				pstmt.setString(3, bean.getMissionDesc());
				pstmt.setInt(4, bean.getMissionPeople());
				pstmt.setString(5, bean.getMissionGender());
				pstmt.setString(6, bean.getMissionExcuteTime());
//				如果是DATE用這個寫法，但已經改成字串了
//				java.util.Date missionExcuteTime = bean.getMissionExcuteTime();
//				if(missionExcuteTime != null){
//					long time1 = missionExcuteTime.getTime();
//					pstmt.setDate(6, new java.sql.Date(time1));
//				}else{
//					pstmt.setDate(6, null);
//				}
				
				pstmt.setString(7, bean.getMissionArea());
				pstmt.setString(8, bean.getAddress());
				
				//發布時間 NOW
				java.sql.Timestamp now = new java.sql.Timestamp(System.currentTimeMillis());
				pstmt.setTimestamp(9, now);
				//結束任務時間
				java.util.Date missionEnd = bean.getMissionEnd();
				if(missionEnd != null){
					long time3 = missionEnd.getTime();
					pstmt.setDate(10, new java.sql.Date(time3));
				}else{
					pstmt.setDate(10, null);
				}
				pstmt.setString(11, bean.getLatitude());
				pstmt.setString(12, bean.getLongitude());
				
				int i = pstmt.executeUpdate();
				
				result.setMemberNo(bean.getMemberNo());
				result.setMissionTitle( bean.getMissionTitle());
				result.setMissionDesc( bean.getMissionDesc());
				result.setMissionPeople(bean.getMissionPeople());
				result.setMissionGender( bean.getMissionGender());
				result.setMissionExcuteTime(bean.getMissionExcuteTime());
				result.setMissionArea( bean.getMissionArea());
				result.setAddress(bean.getAddress());
				result.setMissionStrt(now);
				result.setMissionEnd(missionEnd);
				result.setLatitude(bean.getLatitude());
				result.setLongitude(bean.getLongitude());
				
				if(i == 1){
//					System.out.println(result);
					return result;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String DELETE = "DELETE FROM Mission WHERE missionNo = ?";
	@Override
	public boolean delete(int missionNo){
		try (	//Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(DELETE);
				){
			pstmt.setInt(1, missionNo);
			int i = pstmt.executeUpdate();
			if(i == 1){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String UPDATE = "UPDATE Mission SET memberNo=?,missionTitle=?,missionDesc=?,missionPeople=?,missionGender=?,missionExcuteTime=?,missionArea=?,address=? WHERE missionNo=?";
	@Override
	public MissionBean update(int memberNo,String missionTitle,String missionDesc,int missionPeople,String missionGender,String missionExcuteTime,String missionArea,String address,int missionNo){
		MissionBean result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UPDATE);
				){
			pstmt.setInt(1, memberNo);
			pstmt.setString(2, missionTitle);
			pstmt.setString(3,missionDesc);
			pstmt.setInt(4, missionPeople);
			pstmt.setString(5, missionGender);
			pstmt.setString(6, missionExcuteTime);
//			已經改成字串了
//			if(missionExcuteTime != null){
//				long time4 = missionExcuteTime.getTime();
//				pstmt.setDate(6, new java.sql.Date(time4));
//			}else{
//				pstmt.setDate(6, null);
//			}
			
			pstmt.setString(7,missionArea);
			pstmt.setString(8,address);
			pstmt.setInt(9, missionNo);
			pstmt.executeUpdate();
//			if(i == 1){
//				result = this .s
//			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	} 
//	----------------------------------------------------------------------------------------------------------
	private static final String UPDARE_MISSION_STATUS = "UPDATE Mission SET missionStatusNo = ? WHERE missionNo =?";
	@Override
	public MissionBean updateStatus(int missionStatusNo,int missionNo){
		MissionBean result = null;
		try (	//Connection conn =DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UPDARE_MISSION_STATUS);
				){
			pstmt.setInt(1, missionStatusNo);
			pstmt.setInt(2, missionNo);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
