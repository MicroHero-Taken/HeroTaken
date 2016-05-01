package _05mission;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;


public class MissionBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer missionNo;   
	private Integer memberNo;
	private String missionTitle;
	private String missionDesc;
	private byte[] gift;
	private String describe;
	private Integer rewardCoin;
	private Integer missionPeople;
	private String missionGender;
	private String missionExcuteTime;
	private String missionArea;
	private String address;
	private java.util.Date missionStrt;
	private java.util.Date missionEnd;
	private	String memberName;
	private String missionStatus;
	private Integer missionStatusNo;
	private String latitude;
	private String longitude;
	public MissionBean() {
	
	}


	public MissionBean(Integer memberNo, String missionTitle,
			String missionDesc, Integer missionPeople, 
			String missionArea, String address, String missionExcuteTime,String latitude,String longitude) {
		super();
		this.memberNo = memberNo;
		this.missionTitle = missionTitle;
		this.missionDesc = missionDesc;
		this.missionPeople = missionPeople;
		this.missionExcuteTime = missionExcuteTime;
		this.missionArea = missionArea;
		this.address = address;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	@Override
	public String toString() {
		return "MissionBean [missionNo=" + missionNo + ", memberNo=" + memberNo
			    + ", missionTitle="
				+ missionTitle + ", missionDesc=" + missionDesc + ", gift="
				+ Arrays.toString(gift) + ", describe=" + describe
				+ ", rewardCoin=" + rewardCoin + ", missionPeople="
				+ missionPeople + ", missionGender=" + missionGender
				+ ", missionExcuteTime=" + missionExcuteTime + ", missionArea="
				+ missionArea + ", address=" + address + ", missionStrt="
				+ missionStrt + ", missionEnd=" + missionEnd + ", memberName="
				+ memberName + ", missionStatus=" + missionStatus
				+ ", missionStatusNo=" + missionStatusNo + "]" + "\n";
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
	public String getMissionTitle() {
		return missionTitle;
	}
	public void setMissionTitle(String missionTitle) {
		this.missionTitle = missionTitle;
	}
	public String getMissionDesc() {
		return missionDesc;
	}
	public void setMissionDesc(String missionDesc) {
		this.missionDesc = missionDesc;
	}

	public byte[] getGift() {
		return gift;
	}

	public void setGift(byte[] gift) {
		this.gift = gift;
	}

	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public Integer getRewardCoin() {
		return rewardCoin;
	}
	public void setRewardCoin(Integer rewardCoin) {
		this.rewardCoin = rewardCoin;
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
	public String getMissionExcuteTime() {
		return missionExcuteTime;
	}
	public void setMissionExcuteTime(String missionExcuteTime) {
		this.missionExcuteTime = missionExcuteTime;
	}
	public String getMissionArea() {
		return missionArea;
	}
	public void setMissionArea(String missionArea) {
		this.missionArea = missionArea;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMissionStatus() {
		return missionStatus;
	}
	public void setMissionStatus(String missionStatus) {
		this.missionStatus = missionStatus;
	}
	public Integer getMissionStatusNo() {
		return missionStatusNo;
	}
	public void setMissionStatusNo(Integer missionStatusNo) {
		this.missionStatusNo = missionStatusNo;
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
	
	
}
