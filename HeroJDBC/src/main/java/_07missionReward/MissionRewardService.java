package _07missionReward;

import java.io.InputStream;


public class MissionRewardService {
	private MissionRewardDAO dao = new MissionRewardDAO_JDBC();
//	=========================================MAIN===============================================================
	public static void main(String[] args) {
	

	}
//	============================================================================================================
	public int insert(MissionRewardBean bean,InputStream is,long size){
		int result = 0;
		if(bean != null){
			result = dao.insert(bean, is, size);
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public boolean delete(MissionRewardBean bean){
		boolean result = false;
		if(bean != null){
			result = dao.delete(bean.getMissionNo());
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public int update(MissionRewardBean bean,InputStream is,long size){
		int result = 0;
		if(bean != null){
			result = dao.update(bean, is, size);
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public MissionRewardBean select(MissionRewardBean bean){
		MissionRewardBean result =null;
		if(bean != null){
			result = dao.select(bean.getMissionNo());
		}
		return result;
	}
}
