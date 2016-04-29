package _09report;

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



public class ReportDAO_JDBC implements ReportDAO {
//	private static final String URL = "jdbc:sqlserver://localhost:1433;database=Hero";
//	private static final String USERNAME = "sa";
//	private static final String PASSWORD = "passw0rd";
	
	private DataSource dataSource;
	public ReportDAO_JDBC() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args){
		ReportDAO dao = new ReportDAO_JDBC();
//		List<ReportBean> beans = dao.select();
//		System.out.println(beans);
		ReportBean reportBean = new ReportBean();
		reportBean.setMemberNo(2);
		reportBean.setEmail("b@yahoo.com.tw");
		reportBean.setDetail("abc");
		ReportBean bean = dao.insert(reportBean);
		System.out.println(bean);
	}
	
	private static final String SELECT_ALL = "SELECT * FROM Report"; 
	@Override
	public List<ReportBean> select(){
		List<ReportBean> result = null;
		try (	//Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
				Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_ALL);
				ResultSet rset = pstmt.executeQuery();
				){
			result = new ArrayList<ReportBean>();
			while(rset.next()){
				ReportBean bean = new ReportBean();
				bean.setMemberNo(rset.getInt("memberNo"));
				bean.setEmail(rset.getString("email"));
				bean.setDetail(rset.getString("detail"));
				
				result.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	private static final String INSERT ="INSERT INTO Report(memberNo,email,detail) VALUES (?,?,?);";
	@Override
	public ReportBean insert(ReportBean bean){
		ReportBean result = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
//			Connection conn1 = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			conn = dataSource.getConnection();
			pstmt =conn.prepareStatement(INSERT);
			
			if(bean != null){
				result =new ReportBean();
				pstmt.setInt(1, bean.getMemberNo());
				pstmt.setString(2, bean.getEmail());
				pstmt.setString(3, bean.getDetail());
				
				
				int i = pstmt.executeUpdate();
				
				result.setMemberNo(bean.getMemberNo());
				result.setEmail( bean.getEmail());
				result.setDetail( bean.getDetail());
				
				if(i == 1){
					System.out.println(result);
					return result;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return result;
	}

}
