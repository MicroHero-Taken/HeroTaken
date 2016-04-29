package _05mission;

import java.util.Date;
import java.util.List;

public interface MissionDAO {

	public abstract List<MissionBean> select();

	public abstract List<MissionBean> selectName(String memberName);

	public abstract List<MissionBean> selectArea(String missionArea);

	public abstract MissionBean insert(MissionBean bean);

	public abstract boolean delete(int missionNo);

	public abstract MissionBean update(int memberNo, String missionTitle,
			String missionDesc, int missionPeople, String missionGender,
			String string, String missionArea,
			String address, int missionNo);

	public abstract MissionBean updateStatus(int missionStatusNo, int missionNo);

	public abstract MissionBean selectByMD(String missionDesc);

	public abstract MissionBean selectNo(int missionNo);


}