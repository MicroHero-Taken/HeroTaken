package _11missionMem02;

public class MissionMem02Service {
	private MissionMem02DAO missionMem02DAO = new MissionMem02DAO_JDBC();
//	=========================================MAIN===============================================================
	public static void main(String[] args){
		
	}
//  ==============================================================================================================
	public MissionMemBean02 insert(MissionMemBean02 bean){
		MissionMemBean02 result = null;
		if(bean != null){
			result = missionMem02DAO.insert(bean);
		}
		return result;
	}
	
}
