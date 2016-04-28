package controller;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import _05mission.MissionBean;
import _05mission.MissionService;
import _07missionReward.MissionRewardBean;
import _07missionReward.MissionRewardService;
import _init.GlobalService;
@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024 * 1024 * 500 * 5)
@WebServlet("/mission.do")
public class missionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public missionServlet() {

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		Map<String , String> errorMsgs = new HashMap<>();
		request.setAttribute("ErrMsg", errorMsgs);
		
		try {
			String memberNoStr;
			int memberNo = 0; 
			String missionTitle = "";
			String missionDesc = "";
			String missionPeopleStr = "";
			int missionPeople = 0;
			String missionArea = "";
			String address = "";
			String rewardCoinStr = "";
			int rewardCoin = 0;
			String fileName = "";
			long sizeInBytes = 0;
			InputStream is = null;
			String describe = "";
			String missionExcuteTime = "";
			String longitude = "";
			String latitude = "";
			// request.getParts()方法傳回一個由javax.servlet.http.Part物件所組成的Collection
			// javax.servlet.http.Part: 代表上傳到Server的，可以是正常的表單資料(form data)，
			// 也可以上傳的檔案。
			// Part介面可以: 
			// 1. 傳回欄位的名稱(<input>的name屬性)、大小、ContentType
			// 2. 每個Part的Header
			// 3. 刪除Part
			// 4. 將Part寫入硬碟
			Collection<Part> parts = request.getParts();
			for(Part p : parts){
				String fldName = p.getName();
				String value = request.getParameter(fldName);
				if(p.getContentType() == null){
					if(fldName.equals("memberNo")){
						memberNoStr = value;
						memberNo = Integer.parseInt(memberNoStr);
						request.setAttribute("memberNo",memberNo);
					}else if(fldName.equals("missionTitle")){
						missionTitle = value ;
						if(value == null || missionTitle.trim().length() == 0){
							errorMsgs.put("errTitle","標題不能空白");
						}else{
							request.setAttribute("missionTitle", missionTitle);
						}
					}else if(fldName.equals("missionDesc")){
						missionDesc = value;
						if(value == null || missionDesc.trim().length() == 0){
							errorMsgs.put("errDesc", "請說明任務內容");
						}else{
							request.setAttribute("missionDesc", missionDesc);
						}
					}else if(fldName.equals("missionExcuteTime")){
						missionExcuteTime = value;
						if(missionExcuteTime == null || missionExcuteTime.trim().length() == 0){
							errorMsgs.put("errDate", "格式不正確");
						}else{							
								System.out.println("missionExcuteTime= " +missionExcuteTime);
								String s1 = missionExcuteTime.replace("/", " ");
								String s2 = s1.replace(":", " ");
								String s3 = s2.replace(" ","");
								System.out.println("日期+時間=  " +s3);
								SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmm");
								long millionSeconds = sdf.parse(s3).getTime();
								long now = System.currentTimeMillis();
								System.out.println("MET=  " +millionSeconds);
								System.out.println("now=  " +System.currentTimeMillis());
								if(millionSeconds < now){
									errorMsgs.put("errTime", "時間點不正確");
								}else{
									request.setAttribute("missionExcuteTime", missionExcuteTime);
								}
						}
						
					}else if(fldName.equals("missionPeople")){
						missionPeopleStr = value;
						missionPeopleStr = missionPeopleStr.trim();
						if(missionPeopleStr == null || missionPeopleStr.trim().length() == 0){
							errorMsgs.put("errPeople","人數不能空白" );
						}else{
							try {
								missionPeople = Integer.parseInt(missionPeopleStr);
							} catch (NumberFormatException e) {
								e.printStackTrace();
								errorMsgs.put("errPeople", "必須是數值");
							}						
						}
						request.setAttribute("missionPeople", missionPeopleStr);
					}else if(fldName.equals("subtype")){
						missionArea = value;
						if(missionArea == null || missionArea.trim().length() == 0){
							errorMsgs.put("errArea", "請選擇地區");
						}else{
							request.setAttribute("missionArea", missionArea);
						}
					}else if(fldName.equals("address")){
						address = value;
						if(address == null || address.trim().length() == 0){
							errorMsgs.put("errAddress", "請輸入地址");
						}else{
							request.setAttribute("address", address);
						}
					}else if(fldName.equals("Latitude")){
						latitude = value;
						request.setAttribute("latitude",latitude );
					}else if(fldName.equals("Longitude")){
						longitude = value;
						request.setAttribute("longitude",longitude );
					}else if(fldName.equals("rewardCoin")){
						rewardCoinStr = value;
						rewardCoinStr = rewardCoinStr.trim();
						if(rewardCoinStr != null && rewardCoinStr.trim().length()>0){
							try {
								rewardCoin = Integer.parseInt(rewardCoinStr);
							} catch (NumberFormatException e) {
								e.printStackTrace();
								errorMsgs.put("errCoin", "必須是數值");
							}
						}
						request.setAttribute("rewardCoin", rewardCoin);
					}else if(fldName.equals("describe")){
						describe = value;
						request.setAttribute("describe", describe);
					}					
				}else{
					fileName = GlobalService.getFileName(p);
					fileName = GlobalService.adjustFileName(fileName, GlobalService.IMAGE_FILENAME_LENGTH);
					sizeInBytes = p.getSize();
					is = p.getInputStream();
				}
			}
			if((rewardCoinStr == null || rewardCoinStr.trim().length() == 0)  &&  (fileName == null || fileName.trim().length() == 0)){
				errorMsgs.put("errReward", "報酬至少一樣");
			}
			
			if(! errorMsgs.isEmpty()){  
				RequestDispatcher rd = request.getRequestDispatcher("/pages/mission.jsp");
				rd.forward(request, response);
				return;
			}else{
//--------------------------   發佈任務     ------------------------------------------------------------------------
				MissionBean missionBean = new MissionBean(memberNo,missionTitle,missionDesc,missionPeople,missionArea,address,missionExcuteTime,latitude,longitude);
				MissionService missionService = new MissionService();
				MissionBean mbean = missionService.insert(missionBean);

//--------------------------   發佈獎勵     ------------------------------------------------------------------------
				MissionRewardBean missionRewardBean = new MissionRewardBean(fileName,describe,rewardCoin);
				MissionRewardService missionRewardService = new MissionRewardService();
				missionRewardService.insert(missionRewardBean, is, sizeInBytes);
//----------------------------------------------------------------------------------------
//				Date time = mbean.getMissionStrt();  //取任務發佈的時間
//				System.out.println("time=" + time);
				
				MissionBean noBean = missionService.selectMissionNo(missionDesc);
				System.out.println("noBean = " + noBean);
				int no = noBean.getMissionNo();
				System.out.println("missionNo= "+no);
				
				
				
				HttpSession session1 = request.getSession();
				session1.setAttribute("mission",missionBean);
				HttpSession session2 = request.getSession();
				session2.setAttribute("missionReward",missionRewardBean);
				HttpSession session3 = request.getSession();
				session3.setAttribute("missionNo", noBean);
				
				String contextPath = request.getContextPath();
				response.sendRedirect(contextPath + "/pages/missionDisplay.jsp");
				return;
			}
			
		} catch (Exception e) {
			//e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("pages/mission.jsp");
			rd.forward(request, response);
		}
				
	}
}
