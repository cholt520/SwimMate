package action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entity.Report;
import entity.User;
import service.ReportService;
import service.UserService;

public class FileUploadAction extends ActionSupport {

	private ReportService reportService;

	private List<Report> reportList = new ArrayList<Report>();

	private static final long serialVersionUID = 1L;

	private String searchBeachName;
	private String beachName;
	private String submittedName;
	private String reason;
	private String description;
	private File fileUpload;
	private String fileUploadContentType;
	private String fileUploadFileName;
	private int loginUserID = -1;
	private User currentLoginUser;
	private UserService userService;

	public int getLoginUserID() {
		return loginUserID;
	}

	public void setLoginUserID(int loginUserID) {
		this.loginUserID = loginUserID;
	}

	public User getCurrentLoginUser() {
		return currentLoginUser;
	}

	public void setCurrentLoginUser(User currentLoginUser) {
		this.currentLoginUser = currentLoginUser;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public File getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public String execute() throws Exception {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			Report report = new Report();
			report.setBeachName(beachName);
			report.setSubmittedName(submittedName);
			report.setDescription(description);
			report.setFileUpload(fileUpload.toPath().toString());
			report.setFileUploadContentType(fileUploadContentType);
			report.setFileUploadFileName(fileUploadFileName);
			report.setReason(reason);

			reportService.addReport(report);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
		
	}

	public String display() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public String jumpToReportPage() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	
	public String showAllReport() throws Exception {
		reportList = reportService.getAllReport();
		return "showAllReport";
	}

	public String getReportByBeach() throws Exception {
		reportList = reportService.findReportsByBeachName(searchBeachName);
		return "getReportByBeach";
	}

	public String getBeachName() {
		return beachName;
	}

	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}

	public String getSubmittedName() {
		return submittedName;
	}

	public void setSubmittedName(String submittedName) {
		this.submittedName = submittedName;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ReportService getReportService() {
		return reportService;
	}

	public void setReportService(ReportService reportService) {
		this.reportService = reportService;
	}

	public List<Report> getReportList() {
		return reportList;
	}

	public void setReportList(List<Report> reportList) {
		this.reportList = reportList;
	}

	public String getSearchBeachName() {
		return searchBeachName;
	}

	public void setSearchBeachName(String searchBeachName) {
		this.searchBeachName = searchBeachName;
	}
	
}
