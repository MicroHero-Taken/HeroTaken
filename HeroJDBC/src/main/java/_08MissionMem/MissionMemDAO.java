package _08MissionMem;

import java.util.List;

public interface MissionMemDAO {
//	public abstract MissionMemBean selectMemberNo(int memberNo);
//	public abstract MissionMemBean selectMissionTitle(String missionTitle);
//	public abstract MissionMemBean selectMissionDesc(String missionDesc);
//	public abstract MissionMemBean selectMissionPeople(int missionPeople);
//	public abstract MissionMemBean selectMissionGender(String missionGender);
//	public abstract MissionMemBean selectMissionExcuteTime(java.sql.Timestamp missionExcuteTime);
//	public abstract MissionMemBean selectMissionArea(String missionArea);
//	public abstract MissionMemBean selectAddress(String address);
//	public abstract MissionMemBean selectMissionStrt(java.sql.Timestamp missionStrt);
//	public abstract MissionMemBean selectMissionEnd(java.sql.Timestamp missionEnd);
//	public abstract MissionMemBean selectMissionStatusNo(int missionStatusNo);
	public abstract List<MissionMemBean> select();

	public abstract List<MissionMemBean> selectNO_3(int memberNo);

	public abstract List<MissionMemBean> selectNO_2(int memberNo);
}
