package _09report;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;


public class ReportBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer memberNo;   
	private String email;
	private String detail;
	
	public ReportBean() {
	
	}
	
	public ReportBean(Integer memberNo, String email, String detail) {
		super();
		this.memberNo = memberNo;
		this.email = email;
		this.detail = detail;
	}
	
	@Override
	public String toString() {
		return "memberNo:"+memberNo+","+"email:"+email+","+"detail:"+detail;
	}

	public Integer getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(Integer memberNo) {
		this.memberNo = memberNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
}
