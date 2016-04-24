package _07missionReward;

import java.io.InputStream;

public interface MissionRewardDAO {

	public abstract int insert(MissionRewardBean bean, InputStream is, long size);

	public abstract boolean delete(int missionNo);

	public abstract int update(MissionRewardBean bean, InputStream is, long size);

	public abstract MissionRewardBean select(Integer missionNo);

}