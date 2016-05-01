package _06missionStatus;

public class MissionStatusBean {
	private Integer missionStatusNo;
	private String missionStatus;
	public MissionStatusBean() {
		
	}
	
	@Override
	public String toString() {
		return "MissionStatusBean [missionStatusNo=" + missionStatusNo
				+ ", missionStatus=" + missionStatus + "]";
	}
	//	----------------------------------Get/Set---------------------------------------
	public int getMissionStatusNo() {
		return missionStatusNo;
	}
	public void setMissionStatusNo(int missionStatusNo) {
		this.missionStatusNo = missionStatusNo;
	}
	public String getMissionStatus() {
		return missionStatus;
	}
	public void setMissionStatus(String missionStatus) {
		this.missionStatus = missionStatus;
	}
	
	
	
}
