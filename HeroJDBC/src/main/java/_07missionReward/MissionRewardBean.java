package _07missionReward;

import java.io.Serializable;
import java.sql.Blob;

public class MissionRewardBean implements Serializable{
	private static final long serialVersionUID = 1L;
		
	private Integer missionNo;
	private String fileName;
	private Blob gift;
	private String describe;
	private Integer rewardCoin;
	public MissionRewardBean() {

		}

		public MissionRewardBean(Integer missionNo, String fileName, Blob gift,
				String describe, Integer rewardCoin) {
			super();
			this.missionNo = missionNo;
			this.fileName = fileName;
			this.gift = gift;
			this.describe = describe;
			this.rewardCoin = rewardCoin;
		}

		public MissionRewardBean(String fileName, String describe,Integer rewardCoin) {
			super();
			this.fileName = fileName;
			this.describe = describe;
			this.rewardCoin = rewardCoin;
		}

		public Integer getMissionNo() {
			return missionNo;
		}
		public void setMissionNo(Integer missionNo) {
			this.missionNo = missionNo;
		}
		public String getFileName() {
			return fileName;
		}
		public void setFileName(String fileName) {
			this.fileName = fileName;
		}
		public Blob getGift() {
			return gift;
		}
		public void setGift(Blob gift) {
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
		
		
}
