package _04shop;

import java.io.InputStream;
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

public class ShopDAO_JDBC implements ShopDAO {
//	private static final String URL = "jdbc:sqlserver://localhost:1433;database=Hero";
//	private static final String USERNAME = "sa";
//	private static final String PASSWORD = "passw0rd";
	
	private DataSource dataSource;
	public ShopDAO_JDBC() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
//	=========================================MAIN===============================================================
	public static void main(String[] args){
		ShopDAO dao = new ShopDAO_JDBC();
		ShopBean bean =  dao.selectHeroNAME("蝙蝠俠");
		System.out.println(bean);
	}
//	============================================================================================================
	private static final String SELECT_ALL= "SELECT Shop.* FROM Shop";
	@Override
	public List<ShopBean> selelct (){
		List<ShopBean> result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_ALL);
				ResultSet rset = pstmt.executeQuery();
				){
			result = new ArrayList<ShopBean>();
			while(rset.next()){
				ShopBean bean = new ShopBean();
				bean.setHeroNo(rset.getInt("heroNo"));
				bean.setHeroName(rset.getString("heroName"));
				bean.setHeroPrice(rset.getInt("heroPrice"));
				bean.setHeroSkin1(rset.getBlob("heroSkin1"));
				bean.setHeroSkin2(rset.getBlob("heroSkin2"));
				bean.setHeroSkin3(rset.getBlob("heroSkin3"));
				bean.setHeroSkin4(rset.getBlob("heroSkin4"));
				bean.setHeroSkin5(rset.getBlob("heroSkin5"));
				result.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
//	============================================================================================================
	private static final String SELECT_BY_NO = "select * from Shop where  heroNo = ?";
	@Override
	public ShopBean selectHeroNo(int heroNo){
			ShopBean result = null;
			ResultSet rset = null;
		try (	//Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_NO);
				){
			pstmt.setInt(1, heroNo);
			rset = pstmt.executeQuery();
			if(rset.next()){
				result = new ShopBean();
				result.setHeroNo(rset.getInt("heroNo"));
				result.setHeroName(rset.getString("heroName"));
				result.setHeroPrice(rset.getInt("heroPrice"));
				result.setHeroSkin1(rset.getBlob("heroSkin1"));
				result.setHeroSkin1(rset.getBlob("heroSkin2"));
				result.setHeroSkin1(rset.getBlob("heroSkin3"));
				result.setHeroSkin1(rset.getBlob("heroSkin4"));
				result.setHeroSkin1(rset.getBlob("heroSkin5"));
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
//	============================================================================================================
	private static final String SELECT_BY_HERONAME = "SELECT heroNo FROM Shop WHERE heroName=?";
	@Override
	public ShopBean selectHeroNAME(String heroName){
	ShopBean result = null;
	ResultSet rset = null;
		try (	//Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_HERONAME);
				){
			pstmt.setString(1,heroName);
			rset = pstmt.executeQuery();
			while(rset.next()){
				result = new ShopBean();
				result.setHeroNo(rset.getInt("heroNo"));
//				result.setHeroName(rset.getString("heroName"));
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
//	============================================================================================================
	private static final String INSERT = "INSERT INTO Shop(heroNo,heroName,heroPrice,heroSkin1,heroSkin2,heroSkin3,heroSkin4,heroSkin5) VALUES (?,?,?,?,?,?,?,?);";
	@Override
	public ShopBean insert(ShopBean bean, InputStream is1, long size1, InputStream is2, long size2, InputStream is3, long size3, InputStream is4, long size4, InputStream is5, long size5){
		ShopBean result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(INSERT);
				){
			if(bean != null){
				pstmt.setInt(1, bean.getHeroNo());
				pstmt.setString(2, bean.getHeroName());
				pstmt.setInt(3, bean.getHeroPrice());
				pstmt.setBinaryStream(4, is1 , size1);
				pstmt.setBinaryStream(5, is2,  size2);
				pstmt.setBinaryStream(6, is3,  size3);
				pstmt.setBinaryStream(7, is4,  size4);
				pstmt.setBinaryStream(8, is5,  size5);
				int r = pstmt.executeUpdate();
				
				if(r == 1){
					result = this.selectHeroNo(bean.getHeroNo()) ;
				}else{
					throw new SQLException("Hero insert 0");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
//	============================================================================================================
	private static final String delete ="DELETE FROM Shop WHERE heroNo = ?";
	@Override
	public boolean delete (int heroNo){
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(delete);
				){
			pstmt.setInt(1, heroNo);
			int n = pstmt.executeUpdate();
			if(n == 1){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
//	============================================================================================================
	private static final String UPDATE = "UPDATE Shop SET heroName = ? ,heroPrice = ? , heroSkin1 = ?, heroSkin2 = ?, heroSkin3 = ?, heroSkin4 = ?, heroSkin5 = ? WHERE heroNo = ? ;";
	@Override
	public ShopBean update(ShopBean bean , InputStream is1 ,long size1, InputStream is2 ,long size2, InputStream is3 ,long size3, InputStream is4 ,long size4, InputStream is5 ,long size5){
		ShopBean result = null;
			try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
					Connection conn = dataSource.getConnection();
					PreparedStatement pstmt = conn.prepareStatement(UPDATE);
					){
				pstmt.setString(1, bean.getHeroName());
				pstmt.setInt(2, bean.getHeroPrice());
				pstmt.setBinaryStream(3, is1,size1);
				pstmt.setBinaryStream(4, is2,size2);
				pstmt.setBinaryStream(5, is3,size3);
				pstmt.setBinaryStream(6, is4,size4);
				pstmt.setBinaryStream(7, is5,size5);
				pstmt.setInt(8, bean.getHeroNo());
				int n = pstmt.executeUpdate();
				if(n == 1){
					result = this.selectHeroNo(bean.getHeroNo());
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		return result;
	}
	
	
}
