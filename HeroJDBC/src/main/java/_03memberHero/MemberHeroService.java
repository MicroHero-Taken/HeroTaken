package _03memberHero;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import _04shop.ShopBean;

public class MemberHeroService {
	private MemberHeroDAO memberHeroDAO = new MemberHeroDAO_JDBC();
//	=========================================MAIN===============================================================
	public static void main(String[] args){
		
	}
//	============================================================================================================
	public List<MemberHeroBean> select(int memberNo){
		List<MemberHeroBean> result = null;
		List<MemberHeroBean> temp = memberHeroDAO.selectByMemberNo(memberNo);
		if(temp != null){
			result = new ArrayList<MemberHeroBean>();
			result.addAll(temp);
		}
		return result;
	}
//	============================================================================================================
	public MemberHeroBean insert(MemberHeroBean bean){
		MemberHeroBean result = null;
		if(bean != null){
			result = memberHeroDAO.insert(bean);
		}
		return result;
	}
	
}
