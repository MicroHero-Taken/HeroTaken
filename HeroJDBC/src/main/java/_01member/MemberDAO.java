package _01member;

import java.sql.SQLException;
import java.util.List;

public interface MemberDAO {

	MemberBean select(int id);

	List<MemberBean> getAllMembers();

	List<MemberBean> select();

	MemberBean insertMember(MemberBean bean) throws SQLException;

	MemberBean update(int memberNo, String email, String password, String memberName, String family_name,
			String given_name, String gender, String id, String phone, int rating, int experience, int coin,
			java.sql.Timestamp birthday, int memberStatusNo, int memberHeroStatus);

	int delete(int memberNo);

	MemberBean select(String email);
	
	MemberBean selectEmail(String email);

	MemberBean insertGoogle(MemberBean bean);

	boolean updateCoin(int coin, int memberNo);

	boolean updateHeroStatus(int memberHeroStatus, int memberNo);

}