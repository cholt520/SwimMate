package service;

import java.util.List;

import entity.Report;

public interface ReportService {
	public List<Report> getAllReport();
	public Report getReportById();
	public void addReport(Report report);
	public void deleteReport(Report report);
	public void modifyReport(Report report);
	public List<Report> findReportsByBeachName(String beachName);


}
