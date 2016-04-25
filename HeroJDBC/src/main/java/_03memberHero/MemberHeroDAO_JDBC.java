package _03memberHero;

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

public class MemberHeroDAO_JDBC implements MemberHeroDAO {
//	private static final String URL = "jdbc:sqlserver://localhost:1433;database=Hero";
//	private static final String USERNAME = "sa";
//	private static final String PASSWORD = "passw0rd";
	
	private DataSource dataSource;
	public MemberHeroDAO_JDBC() {
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
	private static final String SELECT_BY_MemberNo ="SELECT MemberHero.memberNo, Member.given_name, MemberHero.HeroNo, Shop.heroName"
			+" FROM    Member INNER JOIN"
			+" MemberHero ON Member.memberNo = MemberHero.memberNo INNER JOIN"
			+" Shop ON MemberHero.HeroNo = Shop.heroNo where MemberHero.memberNo = ?";
	/* (non-Javadoc)
	 * @see _03memberHero.MemberHeroDAO#selectByMemberNo(int)
	 */
	@Override
	public List<MemberHeroBean> selectByMemberNo(int memberNo){
		List<MemberHeroBean> result = null;
		ResultSet rset = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_MemberNo);
			){
			pstmt.setInt(1, memberNo);
			rset = pstmt.executeQuery();
			
			result = new ArrayList<MemberHeroBean>();
			while(rset.next()){
				MemberHeroBean bean = new MemberHeroBean();
				bean.setMemberNo(rset.getInt("memberNo"));
				bean.setGiven_name(rset.getString("given_name"));
				bean.setHeroNo(rset.getInt("heroNo"));
				bean.setHeroName(rset.getString("heroName"));
				result.add(bean);
			}			
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		if(rset != null){
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
	private static final String INSERT = "INSERT INTO MemberHero values (?, ?)";
	/* (non-Javadoc)
	 * @see _03memberHero.MemberHeroDAO#insert(_03memberHero.MemberHeroBean)
	 */
	@Override
	public MemberHeroBean insert(MemberHeroBean bean){
		MemberHeroBean result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt =conn.prepareStatement(INSERT);
				){
			if(bean != null){
				result = new MemberHeroBean();
				pstmt.setInt(1, bean.getMemberNo());
				pstmt.setInt(2, bean.getHeroNo());
				int i= pstmt.executeUpdate();
				
				result.setMemberNo(bean.getMemberNo());
				result.setHeroNo(bean.getHeroNo());
				
				if(i == 1){
					return result;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
//	============================================================================================================

	
	
}
