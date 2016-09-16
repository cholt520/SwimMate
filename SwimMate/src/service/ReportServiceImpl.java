package service;

import java.util.List;

import dao.ReportDao;
import entity.Report;

public class ReportServiceImpl implements ReportService{
	private ReportDao reportDao;

	public List<Report> getAllReport() {
		return reportDao.getAllReport();
	}

	public Report getReportById() {
		return null;
	}

	public void addReport(Report report) {
		reportDao.addReport(report);
	}

	public void deleteReport(Report report) {
		
	}

	public void modifyReport(Report report) {
		
	}

	public ReportDao getReportDao() {
		return reportDao;
	}

	public void setReportDao(ReportDao reportDao) {
		this.reportDao = reportDao;
	}
	
}
