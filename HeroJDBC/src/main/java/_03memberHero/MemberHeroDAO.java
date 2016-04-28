package _03memberHero;

import java.util.List;

public interface MemberHeroDAO {

	public abstract List<MemberHeroBean> selectByMemberNo(int memberNo);

	public abstract MemberHeroBean insert(MemberHeroBean bean);
	//	============================================================================================================

}