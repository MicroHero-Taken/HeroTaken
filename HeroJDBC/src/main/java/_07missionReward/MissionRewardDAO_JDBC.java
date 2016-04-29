package _07missionReward;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class MissionRewardDAO_JDBC implements MissionRewardDAO{
//	private static final String URL = "jdbc:sqlserver://localhost:1433;database=Hero";
//	private static final String USERNAME = "sa";
//	private static final String PASSWORD = "passw0rd";
	
	private DataSource dataSource;
	public MissionRewardDAO_JDBC() {
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
	private static final String INSERT = "INSERT INTO MissionReward (fileName,gift,describe,rewardCoin) VALUES (?,?,?,?)";
	@Override
	public int insert(MissionRewardBean bean,InputStream is,long size){
		int r = 0;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(INSERT);
				){
			pstmt.setString(1,bean.getFileName());
			// 設定Image欄位
			// pstmt1.setBlob(11, is, size); // 王老師範例說此方法目前未支援
			pstmt.setBinaryStream(2, is, size);
			pstmt.setString(3, bean.getDescribe());
			pstmt.setInt(4, bean.getRewardCoin());
			r = pstmt.executeUpdate();
			if(r == 1){
				System.out.println("Reward insert success");
			}else{
				throw new SQLException("Reward:新增記錄數 : 0");
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return r;
	}
//	============================================================================================================
	private static final String DELETE = "DELETE FROM MissionReward WHERE missionNo = ?";
	@Override
	public boolean delete(int missionNo){
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(DELETE);
				){
			
			pstmt.setInt(1,missionNo);
			int i = pstmt.executeUpdate();
			if(i == 1){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	} 
//	============================================================================================================
	private static final String UPDARE = "UPDATE MissionReward SET fileName=? ,gift=?,describe=?,rewardCoin=? WHERE missionNo = ?";
	@Override
	public int update(MissionRewardBean bean,InputStream is,long size){
		int n = 0;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UPDARE);
				){
			pstmt.setString(1, bean.getFileName());
			pstmt.setBinaryStream(2, is , size);
			pstmt.setString(3, bean.getDescribe());
			pstmt.setInt(4, bean.getRewardCoin());
			pstmt.setInt(5, bean.getMissionNo());
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
//	----------------------------------------------------------------------------------------------------------
	private static final String select = "SELECT * FROM MissionReward WHERE missionNo = ?";
	@Override
	public MissionRewardBean select(Integer missionNo){
		MissionRewardBean result = null;
		ResultSet rset = null;
		try(	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(select);
				){
			pstmt.setInt(1, missionNo);
			rset = pstmt.executeQuery();
			if(rset.next()){
				result=new MissionRewardBean();
				result.setMissionNo(rset.getInt("missionNo"));
				result.setFileName(rset.getString("fileName"));
				result.setGift(rset.getBlob("gift"));
				result.setDescribe(rset.getString("describe"));
				result.setRewardCoin(rset.getInt("rewardCoin"));
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
