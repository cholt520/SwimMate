package dao;

import java.util.List;

import entity.Report;

public interface ReportDao {
	
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
	* find Report by id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public List<Report> findReportsByBeachName(String beachName);
}
