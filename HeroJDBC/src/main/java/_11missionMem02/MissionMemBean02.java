package _11missionMem02;

public class MissionMemBean02 {
	private Integer missionNo;
	private Integer memberNo;
	public MissionMemBean02() {

	}
	
	public MissionMemBean02(Integer missionNo, Integer memberNo) {
		super();
		this.missionNo = missionNo;
		this.memberNo = memberNo;
	}

	//	----------------------------------Get/Set---------------------------------------
	public Integer getMissionNo() {
		return missionNo;
	}
	public void setMissionNo(Integer missionNo) {
		this.missionNo = missionNo;
	}
	public Integer getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(Integer memberNo) {
		this.memberNo = memberNo;
	}
	
}
