package _09report;

import java.util.List;

public interface ReportDAO {

	public abstract List<ReportBean> select();

//	public abstract List<ReportBean> selectMemberNo(int memberNo);
//
//	public abstract List<ReportBean> selectEmail(String email);
//
//	public abstract List<ReportBean> selectDetail(String detail);

	public abstract ReportBean insert(ReportBean bean);

}
