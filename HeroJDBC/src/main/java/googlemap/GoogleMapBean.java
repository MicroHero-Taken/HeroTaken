package googlemap;

public class GoogleMapBean {
	// 抓GoogleMap標記&顯示資料
	private Integer missionNo;  
	private String missionTitle;
	private String memberName;
	private Integer missionPeople;
	private String missionGender;
	private java.util.Date missionStrt;
	private java.util.Date missionEnd;
	private String missionDesc;
	private String latitude;
	private String longitude;
	private Integer missionStatusNo;
	private Integer memberHeroStatus;

	// Getter&Setter
	public GoogleMapBean(Integer missionNo,String missionTitle,String memberName,Integer missionPeople,String missionGender,java.util.Date missionStrt,java.util.Date missionEnd,String missionDesc,String latitude,String longitude,Integer missionStatusNo,Integer memberHeroStatus){
		this.missionNo = missionNo;
		this.missionTitle = missionTitle;
		this.memberName = memberName;
		this.missionPeople = missionPeople;
		this.missionGender = missionGender;
		this.missionStrt = missionStrt;
		this.missionEnd = missionEnd;
		this.missionDesc = missionDesc;
		this.latitude = latitude;
		this.longitude = longitude;
		this.missionStatusNo = missionStatusNo;
		this.memberHeroStatus = memberHeroStatus;
	}
	public GoogleMapBean(){
		super();
	}
	public Integer getMissionNo() {
		return missionNo;
	}
	public void setMissionNo(Integer missionNo) {
		this.missionNo = missionNo;
	}
	public String getMissionTitle() {
		return missionTitle;
	}
	public void setMissionTitle(String missionTitle) {
		this.missionTitle = missionTitle;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Integer getMissionPeople() {
		return missionPeople;
	}
	public void setMissionPeople(Integer missionPeople) {
		this.missionPeople = missionPeople;
	}
	public String getMissionGender() {
		return missionGender;
	}
	public void setMissionGender(String missionGender) {
		this.missionGender = missionGender;
	}
	public java.util.Date getMissionStrt() {
		return missionStrt;
	}
	public void setMissionStrt(java.util.Date missionStrt) {
		this.missionStrt = missionStrt;
	}
	public java.util.Date getMissionEnd() {
		return missionEnd;
	}
	public void setMissionEnd(java.util.Date missionEnd) {
		this.missionEnd = missionEnd;
	}
	public String getMissionDesc() {
		return missionDesc;
	}
	public void setMissionDesc(String missionDesc) {
		this.missionDesc = missionDesc;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public Integer getMissionStatusNo() {
		return missionStatusNo;
	}
	public void setMissionStatusNo(Integer missionStatusNo) {
		this.missionStatusNo = missionStatusNo;
	}
	public Integer getMemberHeroStatus() {
		return memberHeroStatus;
	}
	public void setMemberHeroStatus(Integer memberHeroStatus) {
		this.memberHeroStatus = memberHeroStatus;
	}
}