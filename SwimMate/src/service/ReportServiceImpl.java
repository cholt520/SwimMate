package service;

import java.util.List;

import dao.ReportDao;
import entity.Report;

public class ReportServiceImpl implements ReportService{
	private ReportDao reportDao;

	/**
	* Get All Reports
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Report> getAllReport() {
		return reportDao.getAllReport();
	}

	/**
	* Get All Report By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Report getReportById() {
		return null;
	}

	/**
	* Add Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void addReport(Report report) {
		reportDao.addReport(report);
	}

	/**
	* delete Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void deleteReport(Report report) {
		
	}

	/**
	* change Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void modifyReport(Report report) {
		
	}

	public ReportDao getReportDao() {
		return reportDao;
	}

	public void setReportDao(ReportDao reportDao) {
		this.reportDao = reportDao;
	}

	/**
	* find Report By BeachName
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public List<Report> findReportsByBeachName(String beachName) {
		return reportDao.findReportsByBeachName(beachName);
	}
	
}
