package _08MissionMem;

import java.io.Serializable;

public class MissionMemBean implements Serializable{
	private static final long serialVersionUID = 1L;
//private Integer missionNo;
//private Integer memberNo;
//private String nickName;
//private String gender;
//private Integer experience;
//private Integer memberNo;
private String missionTitle;
private String given_name;
private String missionDesc;
private Integer missionPeople;
private String missionGender;
private java.sql.Timestamp missionExcuteTime;
private String missionArea;
private String address;
private java.sql.Timestamp missionStrt;
private java.sql.Timestamp missionEnd;
private Integer missionStatusNo;
private String missionStatus;
	
public MissionMemBean(Integer memberNo, String missionTitle, String given_name,
		String missionDesc, Integer missionPeople, 
		String missionGender, java.sql.Timestamp missionExcuteTime, String missionArea, String address, java.sql.Timestamp missionStrt, java.sql.Timestamp missionEnd, Integer missionStatusNo) {
	super();
//	this.memberNo = memberNo;
	this.missionTitle = missionTitle;
	this.given_name = given_name;
	this.missionDesc = missionDesc;
	this.missionPeople = missionPeople;
	this.missionGender = missionGender;
	this.missionExcuteTime = missionExcuteTime;
	this.missionArea = missionArea;
	this.address = address;
	this.missionStrt = missionStrt;
	this.missionEnd = missionEnd;
	this.missionStatusNo = missionStatusNo;
}

public MissionMemBean() {
}

@Override
public String toString() {
	return "MissionMemBean [任務名稱:"+missionTitle+"，"+"任務描述:"+missionDesc+"，"+"任務需求人數:"+missionPeople+"，"+"任務限制性別:"+missionGender+"，"+"任務執行時間:"+missionExcuteTime+"，"+"任務區域:"+missionArea+"，"+"任務地址:"+address+"，"+"任務發布時間:"+missionStrt+"，"+"任務結束時間:"+""+"，"+"任務狀態:"+missionStatusNo+"]"+"\n";
}


//public Integer getMemberNo() {
//	return memberNo;
//}
//
//
//public void setMemberNo(Integer memberNo) {
//	this.memberNo = memberNo;
//}


public String getMissionTitle() {
	return missionTitle;
}


public void setMissionTitle(String missionTitle) {
	this.missionTitle = missionTitle;
}


public String getMissionDesc() {
	return missionDesc;
}


public String getGiven_name() {
	return given_name;
}

public void setGiven_name(String given_name) {
	this.given_name = given_name;
}

public void setMissionDesc(String missionDesc) {
	this.missionDesc = missionDesc;
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


public java.sql.Timestamp getMissionExcuteTime() {
	return missionExcuteTime;
}


public void setMissionExcuteTime(java.sql.Timestamp missionExcuteTime) {
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


public java.sql.Timestamp getMissionStrt() {
	return missionStrt;
}


public void setMissionStrt(java.sql.Timestamp missionStrt) {
	this.missionStrt = missionStrt;
}


public java.sql.Timestamp getMissionEnd() {
	return missionEnd;
}


public void setMissionEnd(java.sql.Timestamp missionEnd) {
	this.missionEnd = missionEnd;
}


public Integer getMissionStatusNo() {
	return missionStatusNo;
}


public void setMissionStatusNo(Integer missionStatusNo) {
	this.missionStatusNo = missionStatusNo;
}

public String getMissionStatus() {
	return missionStatus;
}

public void setMissionStatus(String missionStatus) {
	this.missionStatus = missionStatus;
}

//public Integer getMissionNo() {
//	return missionNo;
//}
//public void setMissionNo(Integer missionNo) {
//	this.missionNo = missionNo;
//}
//public Integer getMemberNo() {
//	return memberNo;
//}
//public void setMemberNo(Integer memberNo) {
//	this.memberNo = memberNo;
//}
//public String getNickName() {
//	return nickName;
//}
//public void setNickName(String nickName) {
//	this.nickName = nickName;
//}
//public String getGender() {
//	return gender;
//}
//public void setGender(String gender) {
//	this.gender = gender;
//}
//public Integer getExperience() {
//	return experience;
//}
//public void setExperience(Integer experience) {
//	this.experience = experience;
//}
}
