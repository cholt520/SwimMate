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

	/**
	 * getLoginUserID
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public int getLoginUserID() {
		return loginUserID;
	}

	/**
	 * setLoginUserID
	 *
	 * @param loginUserID
	 * @throws java.Nullpoint.exception
	 */
	public void setLoginUserID(int loginUserID) {
		this.loginUserID = loginUserID;
	}

	/**
	 * getCurrentLoginUser
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public User getCurrentLoginUser() {
		return currentLoginUser;
	}

	/**
	 * setCurrentLoginUser
	 *
	 * @param currentLoginUser
	 * @throws java.Nullpoint.exception
	 */
	public void setCurrentLoginUser(User currentLoginUser) {
		this.currentLoginUser = currentLoginUser;
	}

	/**
	 * getUserService
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public UserService getUserService() {
		return userService;
	}

	/**
	 * set User Service
	 *
	 * @param userService
	 * @throws java.Nullpoint.exception
	 */
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * getFileUpload
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public File getFileUpload() {
		return fileUpload;
	}

	/**
	 * setFileUpload
	 *
	 * @param fileUpload
	 * @throws java.Nullpoint.exception
	 */
	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	/**
	 * getFileUploadContentType
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	/**
	 * setFileUploadContentType
	 *
	 * @param fileUploadContentType
	 * @throws java.Nullpoint.exception
	 */
	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	/**
	 * getFileUploadFileName
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	/**
	 * setFileUploadFileName
	 *
	 * @param fileUploadFileName
	 * @throws java.Nullpoint.exception
	 */
	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	/**
	 * get the report information from report page. the value of attributes will
	 * be store in report table, the file will be store on file system
	 *
	 * @param report,
	 *            file
	 * @throws java.Nullpoint.exception
	 */
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
			addActionMessage("Submit report successfully!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;

	}

	public String reportDescription() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	/**
	 * getUserById
	 *
	 * @param loginUserID
	 * @throws java.Nullpoint.exception
	 */
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

	/**
	 * getUserById
	 *
	 * @param loginUserID
	 * @throws java.Nullpoint.exception
	 */
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

	/**
	 * return all report and show them into report.jsp page
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String showAllReport() throws Exception {
		addActionMessage("Submit report successfully!");
		reportList = reportService.getAllReport();
		return "showAllReport";
	}

	/**
	 * get Report By Beach
	 *
	 * @param searchBeachName
	 * @throws java.Nullpoint.exception
	 */
	public String getReportByBeach() throws Exception {
		reportList = reportService.findReportsByBeachName(searchBeachName);
		return "getReportByBeach";
	}

	/**
	 * getBeachName
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getBeachName() {
		return beachName;
	}

	/**
	 * setBeachName
	 *
	 * @param beachName
	 * @throws java.Nullpoint.exception
	 */
	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}

	/**
	 * getSubmittedName
	 * 
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getSubmittedName() {
		return submittedName;
	}

	/**
	 * setSubmittedName
	 *
	 * @param submittedName
	 * @throws java.Nullpoint.exception
	 */
	public void setSubmittedName(String submittedName) {
		this.submittedName = submittedName;
	}

	/**
	 * getReason
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getReason() {
		return reason;
	}

	/**
	 * setReason
	 *
	 * @param reason
	 * @throws java.Nullpoint.exception
	 */
	public void setReason(String reason) {
		this.reason = reason;
	}

	/**
	 * getDescription
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * setDescription
	 *
	 * @param description
	 * @throws java.Nullpoint.exception
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * getReportService
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public ReportService getReportService() {
		return reportService;
	}

	/**
	 * setReportService
	 *
	 * @param reportService
	 * @throws java.Nullpoint.exception
	 */
	public void setReportService(ReportService reportService) {
		this.reportService = reportService;
	}

	/**
	 * get all Report and then display them on report.jsp page
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public List<Report> getReportList() {
		return reportList;
	}

	/**
	 * setReportList
	 *
	 * @param reportList
	 * @throws java.Nullpoint.exception
	 */
	public void setReportList(List<Report> reportList) {
		this.reportList = reportList;
	}

	/**
	 * getSearchBeachName
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getSearchBeachName() {
		return searchBeachName;
	}

	/**
	 * setSearchBeachName
	 *
	 * @param searchBeachName
	 * @throws java.Nullpoint.exception
	 */
	public void setSearchBeachName(String searchBeachName) {
		this.searchBeachName = searchBeachName;
	}

}
