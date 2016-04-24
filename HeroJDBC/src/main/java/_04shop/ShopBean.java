package _04shop;

import java.io.Serializable;
import java.sql.Blob;

public class ShopBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer heroNo; 
	private String heroName;
	private Integer heroPrice;
	private Blob heroSkin1;
	private Blob heroSkin2;
	private Blob heroSkin3;
	private Blob heroSkin4;
	private Blob heroSkin5;
	
	public ShopBean() {
		
	}
	
	public ShopBean(Integer heroNo, String heroName, Integer heroPrice) {
		super();
		this.heroNo = heroNo;
		this.heroName = heroName;
		this.heroPrice = heroPrice;
	}

	@Override
	public String toString() {
		return "ShopBean [heroNo=" + heroNo + ", heroName=" + heroName
				+ ", heroPrice=" + heroPrice + ", heroSkin1=" + heroSkin1
				+ ", heroSkin2=" + heroSkin2 + ", heroSkin3=" + heroSkin3
				+ ", heroSkin4=" + heroSkin4 + ", heroSkin5=" + heroSkin5 + "]" +"\n";
	}
	//	----------------------------------Get/Set---------------------------------------
	public Integer getHeroNo() {
		return heroNo;
	}

	public void setHeroNo(Integer heroNo) {
		this.heroNo = heroNo;
	}

	public String getHeroName() {
		return heroName;
	}

	public void setHeroName(String heroName) {
		this.heroName = heroName;
	}

	public Integer getHeroPrice() {
		return heroPrice;
	}

	public void setHeroPrice(Integer heroPrice) {
		this.heroPrice = heroPrice;
	}

	public Blob getHeroSkin1() {
		return heroSkin1;
	}

	public void setHeroSkin1(Blob heroSkin1) {
		this.heroSkin1 = heroSkin1;
	}

	public Blob getHeroSkin2() {
		return heroSkin2;
	}

	public void setHeroSkin2(Blob heroSkin2) {
		this.heroSkin2 = heroSkin2;
	}

	public Blob getHeroSkin3() {
		return heroSkin3;
	}

	public void setHeroSkin3(Blob heroSkin3) {
		this.heroSkin3 = heroSkin3;
	}

	public Blob getHeroSkin4() {
		return heroSkin4;
	}

	public void setHeroSkin4(Blob heroSkin4) {
		this.heroSkin4 = heroSkin4;
	}

	public Blob getHeroSkin5() {
		return heroSkin5;
	}

	public void setHeroSkin5(Blob heroSkin5) {
		this.heroSkin5 = heroSkin5;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}	
	
}
