package _08MissionMem;

import java.util.ArrayList;
import java.util.List;

import _05mission.MissionBean;



public class MissionMemService {
	private MissionMemDAO missionMemDAO = new MissionMemDAO_JDBC();
	public void setMissionMemDAO(MissionMemDAO missionMemDAO) {
		this.missionMemDAO = missionMemDAO;
	}
	
	public static void main(String[] args){
		MissionMemService missionMemService = new MissionMemService();
		MissionMemBean bean = new MissionMemBean();
		List<MissionMemBean> beans = missionMemService.select(bean);
	}

	public List<MissionMemBean> select() {
		return missionMemDAO.select();
	}
	
	public List<MissionMemBean> select(MissionMemBean bean) {
		List<MissionMemBean> result = null;
		result = missionMemDAO.select();
		return result;
		
	}
//	========================================================================================
	public List<MissionMemBean> slectNO_3(int memberNo){
		List<MissionMemBean> result = null;
		if(memberNo != 0){
			List<MissionMemBean> temp = missionMemDAO.selectNO_3(memberNo);
			if(temp != null){
				result = new ArrayList<MissionMemBean>();
				result.addAll(temp);
			}
		}
		return result;
	}
//	========================================================================================
	public List<MissionMemBean> slectNO_2(int memberNo){
		List<MissionMemBean> result = null;
		if(memberNo != 0){
			List<MissionMemBean> temp = missionMemDAO.selectNO_2(memberNo);
			if(temp != null){
				result = new ArrayList<MissionMemBean>();
				result.addAll(temp);
			}
		}
		return result;
	}
	
	
	
//	========================================================================================
	
	public void delete(int number){
		missionMemDAO.delete(number);
	}
	
	
}
