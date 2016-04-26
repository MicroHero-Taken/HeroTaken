package _01member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import java.util.List;

public class MemberDAOjdbc implements MemberDAO  {
	
	private DataSource ds = null;
	public MemberDAOjdbc() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}	
	public static void main(String[] args) throws NamingException, SQLException {
		MemberDAO dao = new MemberDAOjdbc();
		
		MemberBean bean = dao.select(1);
		
		System.out.println(bean);
	}
//	============================================================================================================	
	private static final String SELECT_BY_EMAIL1 = "SELECT memberNo, email, password, memberName, family_name, given_name FROM Member WHERE email = ?;";
	@Override
	public MemberBean selectEmail(String email){
		MemberBean result = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(SELECT_BY_EMAIL1);
			pstmt.setString(1, email);
			rset = pstmt.executeQuery();
			if(rset.next()){
				result = new MemberBean();
				result.setMemberNo(rset.getInt("memberNo"));
				result.setEmail(rset.getString("email"));
				result.setPassword(rset.getString("password"));
				result.setMemberName(rset.getString("memberName"));
				result.setFamily_name(rset.getString("family_name"));
				result.setGiven_name(rset.getString("given_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
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
	
//	============================================================================================================	
	private static final String INSERT_GOOGLE = "INSERT INTO Member (email,memberName,family_name,given_name)VALUES(?,?,?,?);";
	@Override
	public MemberBean insertGoogle(MemberBean bean){
		MemberBean result = null;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(INSERT_GOOGLE);
			
			pstmt.setString(1, bean.getEmail());
			pstmt.setString(2, bean.getMemberName());
			pstmt.setString(3, bean.getFamily_name());
			pstmt.setString(4, bean.getGiven_name());
			int count = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
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
		return result;
	}
//	============================================================================================================	
	private static final String UPDATE_COIN = "update member set coin=? where memberNo=?";
	@Override
	public boolean updateCoin(int coin, int memberNo){
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UPDATE_COIN);
				){
			pstmt.setInt(1, coin);
			pstmt.setInt(2, memberNo);
			int i = pstmt.executeUpdate();
			if(i==1){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
//	============================================================================================================	
	private static final String UPDATE_HEROSTATUS = "UPDATE Member SET memberHeroStatus = ? WHERE memberNo = ? ";
	@Override
	public boolean updateHeroStatus(int memberHeroStatus , int memberNo){
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UPDATE_HEROSTATUS);
				){
			pstmt.setInt(1, memberHeroStatus);
			pstmt.setInt(2, memberNo);
			int i = pstmt.executeUpdate();
			if(i==1){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
//	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	private static final String SELECT_BY_ID = "Select memberNo ,email, password, memberName, family_name, given_name, gender, id,  phone, rating, experience, coin, birthday, memberStatusNo, memberHeroStatus from Member where memberNo = ?";
	@Override
	public MemberBean select(int id) {
		MemberBean result = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(SELECT_BY_ID);
			stmt.setInt(1, id);
			rset = stmt.executeQuery();
			if (rset.next()) {
				result = new MemberBean();
				result.setMemberNo(rset.getInt("memberNo"));
				result.setEmail(rset.getString("email"));
				result.setPassword(rset.getString("password"));
				result.setMemberName(rset.getString("memberName"));
				result.setFamily_name(rset.getString("family_name"));
				result.setGiven_name(rset.getString("given_name"));
				result.setGender(rset.getString("gender"));
				result.setId(rset.getString("id"));
				result.setPhone(rset.getString("phone"));
				result.setRating(rset.getInt("rating"));
				result.setExperience(rset.getInt("experience"));
				result.setCoin(rset.getInt("coin"));
				result.setBirthday(rset.getTimestamp("birthday"));
				result.setMemberStatusNo(rset.getInt("memberStatusNo"));
				result.setMemberHeroStatus(rset.getInt("memberHeroStatus"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
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

	@Override
	public List<MemberBean> getAllMembers() {
		return select();
	}
	private static final String SELECT_ALL = "Select email, password, memberName, family_name, given_name, gender, id, phone, rating, experience, coin, birthday, memberStatus, memberHeroStatusNo from Member";
	@Override
	public List<MemberBean> select() {
		result = null;

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(SELECT_ALL);

			rset = stmt.executeQuery();
			//result = new Vector<>();
			while (rset.next()) {
				MemberBean temp = new MemberBean();
				temp = new MemberBean();
				temp.setEmail(rset.getString("email"));
				temp.setPassword(rset.getString("password"));
				temp.setMemberName(rset.getString("memberName"));
				temp.setFamily_name(rset.getString("family_name"));
				temp.setGiven_name(rset.getString("given_name"));
				temp.setGender(rset.getString("gender"));
				temp.setId(rset.getString("id"));
				temp.setPhone(rset.getString("phone"));
				temp.setRating(rset.getInt("rating"));
				temp.setExperience(rset.getInt("experience"));
				temp.setCoin(rset.getInt("coin"));
				temp.setBirthday(rset.getTimestamp("birthday"));
				temp.setMemberStatusNo(rset.getInt("memberStatusNo"));
				temp.setMemberHeroStatus(rset.getInt("memberHeroStatus"));
				
				result.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
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

	private static final String INSERT = "Insert into Member (email, password, memberName, family_name, given_name, gender, id, phone, rating, experience, coin, birthday, memberStatusNo, memberHeroStatus) values (?, ?, ?, ?,?, ?, ?,?,? ,?, ?, ?, ?,?)";
	@Override
	public MemberBean insertMember(MemberBean bean) throws SQLException {
		MemberBean result = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		
		int count;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(INSERT);

			
			stmt.setString(1, bean.getEmail());
			stmt.setString(2, bean.getPassword());
			stmt.setString(3, bean.getMemberName());
			stmt.setString(4, bean.getFamily_name());
			stmt.setString(5, bean.getGiven_name());
			stmt.setString(6, bean.getGender());
			stmt.setString(7, bean.getId());
			stmt.setString(8, bean.getPhone());
			stmt.setInt(9, bean.getRating());
			stmt.setInt(10, bean.getExperience());
			stmt.setInt(11, bean.getCoin());
			stmt.setTimestamp(12, bean.getBirthday());
			stmt.setInt(13, bean.getMemberStatusNo());
			stmt.setInt(14, bean.getMemberHeroStatus());
		
			count = stmt.executeUpdate();
			if(count==1) {
				result = bean;
			}
			}
	
		finally {
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
	private static final String UPDATE = "update member set email=?, password=?, memberName=?, family_name=?, given_name=? gender=?, id=?, phone=?, rating=?, experience=?, coin=?, birthday=?, memberStatusNo=?, memberHeroStatus=? where memberNo=?";

	@Override
	public MemberBean update(int memberNo, String email, String password ,String memberName, String family_name, String given_name, String gender, String id, String phone, int rating, int experience, int coin,java.sql.Timestamp birthday, int memberStatusNo, int memberHeroStatus) 
	{
		MemberBean  result = null;
		try(//Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			Connection conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(UPDATE);){
				MemberBean bean = select(memberNo);	
			stmt.setString(1, email);
			stmt.setString(2, password);
			stmt.setString(3, memberName);
			stmt.setString(4, family_name);
			stmt.setString(5, given_name);
			stmt.setString(6, gender);
			stmt.setString(7, id);
			stmt.setString(8, phone);
			stmt.setInt(9, rating);
			stmt.setInt(10, experience);
			stmt.setInt(11, coin);
			stmt.setTimestamp(12, birthday);
			stmt.setInt(13, memberStatusNo);
			stmt.setInt(14, memberHeroStatus);
			
			
			int i = stmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	private static final String DELETE = "Delete from Member where memberNo=?";
	private List<MemberBean> result;

	/* (non-Javadoc)
	 * @see register.model.MemberDAO#delete(int)
	 */
	@Override
	public int delete(int memberNo) {
		int result = 0;

		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(DELETE);

			stmt.setInt(1, memberNo);
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
	private static final String SELECT_BY_EMAIL = "SELECT * FROM Member WHERE email = ? ";
								
	@Override
	public MemberBean select(String email) {
		MemberBean result = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		try {
			conn = ds.getConnection();   
			stmt = conn.prepareStatement(SELECT_BY_EMAIL);
			stmt.setString(1,email);
			rset = stmt.executeQuery();
			if (rset.next()) {
				result = new MemberBean();
				result.setMemberNo(rset.getInt("memberNo"));
				result.setEmail(rset.getString("email"));
				result.setPassword(rset.getString("password"));
				result.setMemberName(rset.getString("memberName"));
				result.setFamily_name(rset.getString("family_name"));
				result.setGiven_name(rset.getString("given_name"));
				result.setGender(rset.getString("gender"));
				result.setId(rset.getString("id"));
				result.setPhone(rset.getString("phone"));
				result.setRating(rset.getInt("rating"));
				result.setExperience(rset.getInt("experience"));
				result.setCoin(rset.getInt("coin"));
				result.setBirthday(rset.getTimestamp("birthday"));
				result.setMemberStatusNo(rset.getInt("memberStatusNo"));
				result.setMemberHeroStatus(rset.getInt("memberHeroStatus"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
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