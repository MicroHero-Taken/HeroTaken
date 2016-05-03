package filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

import _05mission.MissionService;
import _06missionStatus.MissionStatusBean;
import _08MissionMem.MissionMemBean;
import _08MissionMem.MissionMemService;
import _09report.ReportBean;
import _09report.ReportService;


@WebFilter(
		urlPatterns = { "/pages/backend.jsp" }, 
		initParams = { 
				@WebInitParam(name = "url_1", value = "/pages/backend.jsp")
		})
public class BackendFilter implements Filter {

    public BackendFilter() {
        
    }

	public void destroy() {
		
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		ReportService reportService = new ReportService();
		List<ReportBean> reportBeans = reportService.select();
		request.setAttribute("report", reportBeans);
		
		MissionMemService missionMemService =new MissionMemService();
		List<MissionMemBean> missionBeans = missionMemService.select();
		request.setAttribute("mission", missionBeans);
		
		chain.doFilter(request, response);
	}


	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
