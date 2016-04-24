package _05mission;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class MissionService {
	private MissionDAO missionDAO = new MissionDAO_JDBC();
//	=========================================MAIN===============================================================
	public static void main(String[] args){
		MissionService service = new MissionService();
		MissionBean bean = new MissionBean();
		//bean.setMemberName("Zack");
		bean.setMissionArea("台北市大安區");
		
		List<MissionBean> beans = service.select(bean);
		System.out.println("beans= " + beans);
	}
//	============================================================================================================
	public List<MissionBean> select(MissionBean bean){
		List<MissionBean> result = null;
		if(bean != null && bean.getMemberName() != null){
			List<MissionBean> temp =  missionDAO.selectName(bean.getMemberName());
			if(temp != null){
				result = new ArrayList<MissionBean>();
				result.addAll(temp);
			}	
		}else if(bean != null && bean.getMissionArea() != null){
			List<MissionBean> temp1 =  missionDAO.selectArea(bean.getMissionArea());
			if(temp1 != null){
				result = new ArrayList<MissionBean>();
				result.addAll(temp1);
			}
		}else{
			result = missionDAO.select();
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public MissionBean selectMissionNo(String missionDesc){
		MissionBean result = null;
		if(missionDesc != null){
			result = new MissionBean();
			result = missionDAO.selectByMD(missionDesc);
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public MissionBean insert(MissionBean bean){
		MissionBean result =null;
		if(bean != null){
			result = missionDAO.insert(bean);
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public boolean delete(MissionBean bean){
		boolean result = false;
		if(bean != null){
			result = missionDAO.delete(bean.getMissionNo());
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public MissionBean update(MissionBean bean){
		MissionBean result =null;
		if(bean != null){
			result = missionDAO.update(bean.getMemberNo(), bean.getMissionTitle(), bean.getMissionDesc(), 
					bean.getMissionPeople(), bean.getMissionGender(), bean.getMissionExcuteTime(),
					bean.getMissionArea(), bean.getAddress(), bean.getMissionNo());
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public MissionBean updateStatus(MissionBean bean){
		MissionBean result =null;
		if(bean != null){
			result = missionDAO.updateStatus(bean.getMissionStatusNo(),bean.getMissionNo());
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public boolean isNumeric(String str){
		Pattern pattern = Pattern.compile("[0-9]*");
		Matcher isNum = pattern.matcher(str);
		if( !isNum.matches() )
		{
			return false;
		}
		return true;
	}
}
