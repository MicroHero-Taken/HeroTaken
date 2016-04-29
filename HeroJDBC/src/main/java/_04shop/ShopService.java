package _04shop;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class ShopService {
	private ShopDAO shopDAO = new ShopDAO_JDBC();
//	=========================================MAIN===============================================================
	public static void main(String[] args){
		
	}
//  ==============================================================================================================
	public List<ShopBean>select(){
		List<ShopBean> result = null;
		List<ShopBean> temp = shopDAO.selelct();
		if(temp != null){
			result = new ArrayList<ShopBean>();
			result.addAll(temp);
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------//	----------------------------------------------------------------------------------------------------------
	public ShopBean selectByName(String heroName){
		ShopBean result = null;
		if(heroName != null){
			result = shopDAO.selectHeroNAME(heroName);
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------//	----------------------------------------------------------------------------------------------------------
	public ShopBean selectByNo(int heorNo){
		ShopBean result = null;
		if(heorNo != 0){
			result = shopDAO.selectHeroNo(heorNo);
		}
		return result;
	}
	
//	----------------------------------------------------------------------------------------------------------

	public ShopBean insert(ShopBean bean,InputStream is1,long size1,InputStream is2,long size2,InputStream is3,long size3,InputStream is4,long size4,InputStream is5,long size5){
		
		ShopBean result = null;
		if(bean != null){
			result = shopDAO.insert(bean, is1, size1, is2, size2, is3, size3, is4, size4, is5, size5);
		};
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public boolean delete(ShopBean bean){
		boolean result = false;
		if(bean != null){
			result =shopDAO.delete(bean.getHeroNo());
			return true;
		}
		return result;
	}
//	----------------------------------------------------------------------------------------------------------
	public ShopBean update (ShopBean bean, InputStream is1,long size1,InputStream is2,long size2,InputStream is3,long size3,InputStream is4,long size4,InputStream is5,long size5){
		ShopBean result = null;
		if(bean != null){
			result = shopDAO.update(bean, is1, size1, is2, size2, is3, size3, is4, size4, is5, size5);
		}
		return result;
	}
	
}

