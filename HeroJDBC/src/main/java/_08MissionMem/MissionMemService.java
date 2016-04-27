package _08MissionMem;

import java.util.List;



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
//			result = new ArrayList<MissionMemBean>();
//		if(bean != null && bean.getMemberNo() != null) {
//			MissionMemBean memberNo = missionMemDAO.selectMemberNo(bean.getMemberNo());
//			if(memberNo!=null) {
//				result = new ArrayList<MissionMemBean>();
//				result.add(memberNo);
//			}
//		} else if(bean != null && bean.getMissionTitle() != null) {
//			MissionMemBean missionTitle = missionMemDAO.selectMissionTitle(bean.getMissionTitle());
//			if(missionTitle != null) {
//				result = new ArrayList<MissionMemBean>();
//				result.add(missionTitle);
//			}
//		} else if(bean != null && bean.getMissionDesc() != null) {
//			MissionMemBean missionDesc = missionMemDAO.selectMissionDesc(bean.getMissionDesc());
//			if(missionDesc != null) {
//				result = new ArrayList<MissionMemBean>();
//				result.add(missionDesc);
//			}
//		} else if(bean != null && bean.getMissionPeople() != null) {
//			MissionMemBean missionPeople = missionMemDAO.selectMissionPeople(bean.getMissionPeople());
//			if(missionPeople != null) {
//				result = new ArrayList<>();
//				result.add(missionPeople);
//			}
//		} else if(bean != null && bean.getMissionGender() != null) {
//			MissionMemBean missionGender = missionMemDAO.selectMissionGender(bean.getMissionGender());
//			if(missionGender != null) {
//				result = new ArrayList<>();
//				result.add(missionGender);
//			}
//		} else if(bean != null && bean.getMissionExcuteTime() != null) {
//			MissionMemBean missionExcuteTime = missionMemDAO.selectMissionExcuteTime(bean.getMissionExcuteTime());
//			if(missionExcuteTime != null) {
//				result = new ArrayList<>();
//				result.add(missionExcuteTime);
//			}
//		} else if(bean != null && bean.getMissionArea() != null) {
//			MissionMemBean missionArea = missionMemDAO.selectMissionArea(bean.getMissionArea());
//			if(missionArea != null) {
//				result = new ArrayList<>();
//				result.add(missionArea);
//			}
//		} else if(bean != null && bean.getAddress() != null) {
//			MissionMemBean address = missionMemDAO.selectAddress(bean.getAddress());
//			if(address != null) {
//				result = new ArrayList<>();
//				result.add(address);
//			}
//		} else if(bean != null && bean.getMissionStrt() != null) {
//			MissionMemBean missionStrt = missionMemDAO.selectMissionStrt(bean.getMissionStrt());
//			if(missionStrt != null) {
//				result = new ArrayList<>();
//				result.add(missionStrt);
//			}
//		} else if(bean != null && bean.getMissionEnd() != null) {
//			MissionMemBean missionEnd = missionMemDAO.selectMissionEnd(bean.getMissionEnd());
//			if(missionEnd != null) {
//				result = new ArrayList<>();
//				result.add(missionEnd);
//			}
//		} else if(bean != null && bean.getMissionStatusNo() != null) {
//			MissionMemBean missionStatusNo = missionMemDAO.selectMissionStatusNo(bean.getMissionStatusNo());
//			if(missionStatusNo != null) {
//				result = new ArrayList<>();
//				result.add(missionStatusNo);
//			}
//		} else {
//			result = missionMemDAO.select();
//		}
		return result;
		
	}
}
