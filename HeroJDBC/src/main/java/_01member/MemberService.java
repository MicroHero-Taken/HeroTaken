package _01member;

public class MemberService {
	MemberDAO dao = new MemberDAOjdbc();
	public MemberBean login(String email, String password) {
		 MemberDAO dao = new  MemberDAOjdbc();
				 MemberBean bean =  dao.select(email);
		if(bean!=null) {
			String pass = bean.getPassword();	//資料庫抓出		
			if(password.equals(pass)) {
				return bean;
			}			
		}
		return null;
	}
//	--------------------------------------------------------------
	public MemberBean selectById(int memberNo){
		MemberBean bean = dao.select(memberNo);
		if(bean != null){
			return bean;
		}
		return null;
	}
//	--------------------------------------------------------------

	public MemberBean selectByEmail(String email){
		MemberBean bean =dao.select(email);
		if(bean != null){
			return bean;
		}
		return null;
	}
	
//	--------------------------------------------------------------
	public MemberBean googleLogin(String email){
		MemberBean bean = dao.selectEmail(email);
		if(bean != null){
			return bean;
		}
		return null;
	}
//	--------------------------------------------------------------
	public MemberBean googleInsert(MemberBean bean){
		MemberBean result = null;
		if(bean != null){
			result = dao.insertGoogle(bean);
		}
		return result;
	}
//	--------------------------------------------------------------
	public boolean updateCoin(int memberNo, int coin){
		return dao.updateCoin(coin, memberNo);
	}
}
