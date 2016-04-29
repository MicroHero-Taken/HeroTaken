package _01member;

import java.io.Serializable;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class MemberBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int memberNo;
	private String password;
	private String memberName;
	private String family_name;
	private String given_name;
	private String gender;
	private String id;
	private String email;
	private String phone;
	private int rating;
	private int experience;
	private int coin;
	private java.sql.Timestamp birthday;
	private int memberStatusNo;
	private int memberHeroStatus;
//	---------------------------------------------------------------------------------
	public MemberBean() {
	}
	
	
	public MemberBean(String memberName, String family_name, String given_name,
			String email) {
		super();
		this.memberName = memberName;
		this.family_name = family_name;
		this.given_name = given_name;
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "MemberBean [memberNo=" + memberNo + ", password=" + password
				+ ", memberName=" + memberName + ", family_name=" + family_name
				+ ", given_name=" + given_name + ", gender=" + gender + ", id="
				+ id + ", email=" + email + ", phone=" + phone + ", rating="
				+ rating + ", experience=" + experience + ", coin=" + coin
				+ ", birthday=" + birthday + ", memberStatusNo="
				+ memberStatusNo + ", memberHeroStatus=" + memberHeroStatus
				+ "]";
	}

	//	----------------------------------Get/Set---------------------------------------
	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getFamily_name() {
		return family_name;
	}
	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}
	public String getGiven_name() {
		return given_name;
	}
	public void setGiven_name(String given_name) {
		this.given_name = given_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public int getCoin() {
		return coin;
	}
	public void setCoin(int coin) {
		this.coin = coin;
	}
	public java.sql.Timestamp getBirthday() {
		return birthday;
	}
	public void setBirthday(java.sql.Timestamp birthday) {
		this.birthday = birthday;
	}
	public int getMemberStatusNo() {
		return memberStatusNo;
	}
	public void setMemberStatusNo(int memberStatusNo) {
		this.memberStatusNo = memberStatusNo;
	}
	public int getMemberHeroStatus() {
		return memberHeroStatus;
	}
	public void setMemberHeroStatus(int memberHeroStatus) {
		this.memberHeroStatus = memberHeroStatus;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}