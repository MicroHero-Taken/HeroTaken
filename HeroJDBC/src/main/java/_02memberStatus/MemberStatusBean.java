package _02memberStatus;

public class MemberStatusBean {
	private Integer memberStatusNo;
	private String memberStatus;
	public MemberStatusBean() {

	}
	
	@Override
	public String toString() {
		return "MemberStatus [memberStatusNo=" + memberStatusNo
				+ ", memberStatus=" + memberStatus + "]";
	}

	//	----------------------------------Get/Set---------------------------------------
	public Integer getMemberStatusNo() {
		return memberStatusNo;
	}
	public void setMemberStatusNo(Integer memberStatusNo) {
		this.memberStatusNo = memberStatusNo;
	}
	public String getMemberStatus() {
		return memberStatus;
	}
	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}
	
}
