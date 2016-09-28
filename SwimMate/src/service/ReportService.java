package service;

import java.util.List;

import entity.Report;

public interface ReportService {
	
	/**
	* Get All Reports
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Report> getAllReport();
	
	/**
	* Get All Report By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Report getReportById();
	
	/**
	* Add Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void addReport(Report report);
	
	/**
	* delete Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void deleteReport(Report report);
	
	/**
	* change Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void modifyReport(Report report);
	
	/**
	* find Report By BeachName
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public List<Report> findReportsByBeachName(String beachName);


}
