package action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entity.Report;
import service.ReportService;

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

		Report report = new Report();
		report.setBeachName(beachName);
		report.setSubmittedName(submittedName);
		report.setDescription(description);
		report.setFileUpload(fileUpload.toPath().toString());
		report.setFileUploadContentType(fileUploadContentType);
		report.setFileUploadFileName(fileUploadFileName);
		report.setReason(reason);

		reportService.addReport(report);

		return SUCCESS;
	}

	public String display() {
		return NONE;
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
