package _03memberHero;

public class MemberHeroBean {
	private Integer memberNo;
	private String given_name;
	private Integer HeroNo;
	private String heroName;
	private Integer count;
	public MemberHeroBean() {

	}

	public MemberHeroBean(Integer memberNo, Integer heroNo) {
		super();
		this.memberNo = memberNo;
		this.HeroNo = heroNo;
	}

	@Override
	public String toString() {
		return "memberHeroBean [memberNo=" + memberNo + ", given_name="
				+ given_name + ", HeroNo=" + HeroNo + ", heroName=" + heroName
				+ "]";
	}
	//	----------------------------------Get/Set---------------------------------------
	public Integer getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(Integer memberNo) {
		this.memberNo = memberNo;
	}
	public String getGiven_name() {
		return given_name;
	}
	public void setGiven_name(String given_name) {
		this.given_name = given_name;
	}
	public Integer getHeroNo() {
		return HeroNo;
	}
	public void setHeroNo(Integer heroNo) {
		HeroNo = heroNo;
	}
	public String getHeroName() {
		return heroName;
	}
	public void setHeroName(String heroName) {
		this.heroName = heroName;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}
	
}
