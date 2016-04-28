package _09report;

import java.util.ArrayList;
import java.util.List;

public class ReportService {
	private ReportDAO reportDAO = new ReportDAO_JDBC();

	public static void main(String[] args) {
		ReportService service = new ReportService();
		ReportBean bean = new ReportBean();

		List<ReportBean> beans = service.select(bean);
		System.out.println("beans= " + beans);
	}

	public List<ReportBean> select(ReportBean bean){
		List<ReportBean> result = null;
//		if(bean != null && bean.getMemberNo() != null){
//			List<ReportBean> temp =  ReportDAO.selectMemberNo(bean.getMemberNo());
//			if(temp != null){
//				result = new ArrayList<ReportBean>();
//				result.addAll(temp);
//			}	
//		}else if(bean != null && bean.getEmail() != null){
//			List<ReportBean> temp1 = ReportDAO.selectEmail(bean.getEmail());
//			if(temp1 != null){
//				result = new ArrayList<ReportBean>();
//				result.addAll(temp1);
//			}
//		}else if (bean != null && bean.getDetail() != null){
//			List<ReportBean> temp2 = ReportDAO.selectDetail(bean.getDetail());
//			if(temp2 != null){
//				result = new ArrayList<ReportBean>();
//				result.addAll(temp2);				
//			}
//		}else{
			result = reportDAO.select();
//		}
		return result;
	}
	public ReportBean insert(ReportBean bean){
		ReportBean result =null;
			if(bean != null){
				result = reportDAO.insert(bean);
			}
			return result;
		}
}
