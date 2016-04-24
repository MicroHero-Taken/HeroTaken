package _04shop;

import java.io.InputStream;
import java.util.List;

public interface ShopDAO {

	public abstract List<ShopBean> selelct();

	public abstract ShopBean selectHeroNo(int heroNo);

	public abstract ShopBean insert(ShopBean bean, InputStream is1, long size1,
			InputStream is2, long size2, InputStream is3, long size3,
			InputStream is4, long size4, InputStream is5, long size5);

	public abstract boolean delete(int heroNo);

	public abstract ShopBean update(ShopBean bean, InputStream is1, long size1,
			InputStream is2, long size2, InputStream is3, long size3,
			InputStream is4, long size4, InputStream is5, long size5);

	public abstract ShopBean selectHeroNAME(String heroName);

}