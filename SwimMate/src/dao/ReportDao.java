package dao;

import java.util.List;

import entity.Report;

public interface ReportDao {
	public List<Report> getAllReport();
	public Report getReportById();
	public void addReport(Report report);
	public void deleteReport(Report report);
	public void modifyReport(Report report);
}
